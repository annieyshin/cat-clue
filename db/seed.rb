namespace :db do
  namespace :seed do
    letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
    numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']
    coordinates = []
    letters.each do |letter|
      numbers.each do |number|
        coordinates.push(coordinate = letter + number)
      end
    end
    kitchen = ['A1', 'A2', 'B1', 'B2']
    ballroom = ['A5', 'A6', 'B5', 'B6']
    conservatory = ['A9', 'A10', 'B9', 'B10']
    dining = ['E1', 'E2', 'F1', 'F2']
    cellar = ['E5', 'E6', 'F5', 'F6']
    library = ['E9', 'E10', 'F9', 'F10']
    lounge = ['I1', 'I2', 'J1', 'J2']
    hall = ['I5', 'I6', 'J5', 'J6']
    study = ['I9', 'I10', 'J9', 'J10']
    rooms = [kitchen, ballroom, conservatory, dining, cellar, library, lounge, hall, study]
    rooms_hash = {0 => 'Kitchen', 1 => 'Ballroom', 2 => 'Conservatory', 3 => 'Dining Room', 4 => 'Cellar', 5 => 'Library', 6 => 'Lounge', 7 => 'Hall', 8 => 'Study'}
    coodinates.each do |coordinate|
      room_index = 0
      rooms.each do |room|
        if room.include?(coordinate)
          Space.create({:coordinates => coordinate, :player_id => nil, :space_type => rooms_hash[room_index]})
          break
        else
          Space.create({:coordinates => coordinate, :player_id => nil, :space_type => 'space'})
        end
        room_index += 1
      end
    end
  end
end
