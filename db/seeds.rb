User.create!(name: 'John Doe',
             email: 'johndoe@example.com',
             password: 'foobar',
             password_confirmation: 'foobar')

User.create!(name: 'Foo Bar',
             email: 'foobar@example.com',
             password: 'foobar',
             password_confirmation: 'foobar')

50.times do |n|
  user = User.first
  user2 = User.last
  title = "#{n + 1} Rub against owner because nose is wet open the door, let me out, let me out, 
          let me-out, let me-aow, let meaow, meaow! need to check on human, 
          have not seen in an hour might be dead oh look, human is alive, hiss at human, feed me."
  body  = "#{n + 1} Yowling nonstop the whole night. Eat from dog's food. 
          I show my fluffy belly but it's a trap! if you pet it i will tear up your hand. 
          Sit in box cat is love, cat is life so cry louder at reflection or the fat cat sat on the 
          mat bat away with paws make meme, make cute face. Pose purrfectly to show my beauty. 
          Run off table persian cat jump eat fish scratch at fleas, meow until belly rubs, 
          hide behind curtain when vacuum cleaner is on scratch strangers and poo on owners food 
          is good you understand your place in my world or cat dog hate mouse eat string 
          barf pillow no baths hate everything, and no, you can't close the door, i haven't decided 
          whether or not i wanna go out sleeps on my head spend all night ensuring people don't 
          sleep sleep all day. Chase the pig around the house sniff other cat's butt and hang jaw 
          half open thereafter for plan your travel, purrrrrr but make muffins, yet eat owner's food. 
          Fish i must find my red catnip fishy fish catch mouse and gave it as a present cats go for 
          world domination find a way to fit in tiny box. Run around the house at 4 in the 
          morning love and coo around boyfriend who purrs and makes the perfect moonlight eyes 
          so i can purr and swat the glittery gleaming yarn to him (the yarn is from a $125 sweater) 
          lick left leg for ninety minutes, still dirty meow loudly just to annoy owners pee on walls 
          it smells like breakfast or playing with balls of wool i rule on my back you rub my tummy i 
          bite you hard. Meow meow attack like a vicious monster but poop in a handbag look delicious 
          and drink the soapy mopping up water then puke giant foamy fur-balls so cats making all the 
          muffins. Touch my tail, i shred your hand purrrr tuxedo cats always 
          looking dapper kitty kitty. Kitty loves pigs human give me attention meow 
          run outside as soon as door open, lick butt pooping rainbow while flying in a 
          toasted bread costume in space freak human out make funny noise mow mow mow mow 
          mow mow success now attack human yet rub face on owner. Put toy mouse in food bowl 
          run out of litter box at full speed x grab pompom in mouth and put in water dish 
          jump off balcony, onto stranger's head but push your water glass on the floor chase 
          the pig around the house. Meow sit on human they not getting up ever, have a lot of 
          grump in yourself because you can't forget to be grumpy and not be like king grumpy 
          cat but munch, munch, chomp, chomp. "
  if (n % 2 == 0)
    user.posts.create!(title: title, body: body)
  else
    user2.posts.create!(title: title, body: body)
  end
end

