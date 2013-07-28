users = [
  { first_name: "Justin",  last_name: "Bieber" },
  { first_name: "Paris",   last_name: "Hilton" },
  { first_name: "Barack",  last_name: "Obama" },
  { first_name: "Santa",   last_name: "Claus" },
  { first_name: "John",    last_name: "Ousterhout" },
  { first_name: "<Funny>", last_name: "&lt;name" }
]

users.each do |user|
  unless User.where(first_name: user[:first_name], last_name: user[:last_name]).count > 0
    User.create!(first_name: user[:first_name], last_name: user[:last_name])
  end
end

jo = User.where(first_name: "John", last_name: "Ousterhout").first
jb = User.where(first_name: "Justin", last_name: "Bieber").first
ph = User.where(first_name: "Paris", last_name: "Hilton").first
bo = User.where(first_name: "Barack", last_name: "Obama").first
sc = User.where(first_name: "Santa", last_name: "Claus").first

photos = [
  { date_time: "2009-08-30 10:44:23", file_name: "ouster.jpg", user: jo },
  { date_time: "2010-09-13 20:00:00", file_name: "bieber1.jpg", user: jb },
  { date_time: "2010-09-13 20:05:03", file_name: "bieber2.jpg", user: jb },
  { date_time: "2009-11-18 18:02:00", file_name: "hilton1.jpg", user: ph },
  { date_time: "2009-09-20 17:30:00", file_name: "hilton2.jpg", user: ph },
  { date_time: "2009-07-10 16:02:49", file_name: "obama1.jpg", user: bo },
  { date_time: "2010-03-18 23:48:00", file_name: "obama2.jpg", user: bo },
  { date_time: "2010-08-30 14:26:00", file_name: "obama3.jpg", user: bo },
  { date_time: "2010-09-04 09:16:32", file_name: "santa1.jpg", user: sc }
]

photos.each do |photo|
  unless Photo.where(date_time: Time.parse(photo[:date_time]), file_name: photo[:file_name], user_id: photo[:user].id).count > 0
    p = Photo.create!(date_time: photo[:date_time], file_name: photo[:file_name])
    photo[:user].photos << p
  end
end

p1 = Photo.where(date_time: Time.parse("2009-08-30 10:44:23"), file_name: "ouster.jpg", user_id: jo).first
p2 = Photo.where(date_time: Time.parse("2010-09-13 20:00:00"), file_name: "bieber1.jpg", user_id: jb).first
p3 = Photo.where(date_time: Time.parse("2010-09-13 20:05:03"), file_name: "bieber2.jpg", user_id: jb).first
p4 = Photo.where(date_time: Time.parse("2009-11-18 18:02:00"), file_name: "hilton1.jpg", user_id: ph).first
p5 = Photo.where(date_time: Time.parse("2009-09-20 17:30:00"), file_name: "hilton2.jpg", user_id: ph).first
p6 = Photo.where(date_time: Time.parse("2009-07-10 16:02:49"), file_name: "obama1.jpg", user_id: bo).first
p7 = Photo.where(date_time: Time.parse("2010-03-18 23:48:00"), file_name: "obama2.jpg", user_id: bo).first
p8 = Photo.where(date_time: Time.parse("2010-08-30 14:26:00"), file_name: "obama3.jpg", user_id: bo).first
p9 = Photo.where(date_time: Time.parse("2010-09-04 09:16:32"), file_name: "santa1.jpg", user_id: sc).first

comments = [
  { date_time: "2009-09-02 14:01:00", comment: "Learning new programming languages is hard...", user: jo, photo: p1 },
  { date_time: "2009-09-02 14:02:00", comment: "This is another comment, with a bit more text; if the text gets long enough, does it wrap properly from line to line?", user: jo, photo: p1 },
  { date_time: "2009-09-02 14:06:00", comment: "If you see this text in <b>boldface</b> then HTML escaping isn't working properly.", user: jo, photo: p1 },
  { date_time: "2010-09-14 18:07:00", comment: "No guys, she is *not* my mom.  She's my date.", user: jb, photo: p2 },
  { date_time: "2010-02-28 17:45:13", comment: "I came up with lots of comments for this photo, but unfortunately none of them are printable.", user: jo, photo: p5 },
  { date_time: "2010-09-02 14:07:00", comment: "Hey Barack, great form! Do u s'pose u could give me n Lindsay some bowling tips? xxoo Paris", user: ph, photo: p7 },
  { date_time: "2010-09-02 14:07:00", comment: "Sorry Paris, but no can do; my poll numbers are already bad enough...", user: bo, photo: p7 },
  { date_time: "2010-09-06 13:59:33", comment: "We're off to a Justin Bieber concert", user: bo, photo: p8 },
  { date_time: "2010-09-04 10:14:32", comment: "I'm going to be watching how well you do in CS 142!", user: sc, photo: p9 },
]

comments.each do |comment|
debugger unless comment[:user] && comment[:photo]
  unless Comment.where(date_time: Time.parse(comment[:date_time]), comment: comment[:comment], user_id: comment[:user].id, photo_id: comment[:photo].id).count > 0
    c = Comment.create!(date_time: comment[:date_time], comment: comment[:comment])
debugger unless comment[:user]
    comment[:user].comments << c
debugger unless comment[:photo]
    comment[:photo].comments << c
  end
end
