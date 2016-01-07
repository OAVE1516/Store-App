SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subcategory` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

INSERT INTO `products` (`id`, `category`, `subcategory`, `name`, `image`, `price`, `description`) VALUES
(3, 4, 0, 'Popcorn Machine', 'popcornmachine.jpg', '30.00', 'Popcorn machines have become one of the most popular American snacks whether they are sold at the county fair or the movie theater. Let BlockParty help you indulge on some buttery popcorn at an added price.'),
(4, 4, 1, 'DJs', 'dj.jpg', '100.00', 'Here at BlockParty, we have up-and-coming DJs who are prepared to blast the music and make your party the best there is. At an easily affordable price, you’ll get a DJ aggressive to get his name out there.'),
(6, 4, 2, 'Photobooth', 'photobooth.jpg', '100.00', 'If you buy a party with us, your party will be memorable. Give your guests the chance to remember the night of their lives with photos.'),
(7, 4, 2, 'Photographer', 'photographer.jpg', '60.00', 'Make memories last forever with a photographer. If you need artistic direction, just turn to the photography and you’ll be sure to have pictures that you could look back on for years. '),
(9, 4, 0, 'Cotton Candy Machine', 'cottonmachine.jpg', '30.00', 'Whether you’re at a carnival or at a child’s birthday party, BlockParty can provide top of the line cotton candy machines at an affordable price. Don’t be afraid to relive the best of your childhood experiences!'),
(11, 3, -1, 'Masquerade ', 'masquerade.jpg', '-1.00', 'Let the bright times roll! A masquerade party allows attendees to experience new things, including adopting new and anonymous dress and exploring potentially forbidden worlds. The best part is, you are a complete mystery to all attendees, making you the talk of the party. Enjoy a night being whatever and whoever you want to be. Leave the party planning to us and you''ll be the talk of the block.'),
(12, 3, -1, 'Roarin'' 20s', '20s.jpg', '-1.00', 'Want a party fit for Great Jay Gatsby himself? Then you''ve come to the right place. Be ready to show off your extravagant decorations and dress like a flapper, a gangster or whoever you choose to be. Enjoy a night wearing beautiful pearls and glamourous makeup all while dancing the night away in a party fit for the Old Sport himself.'),
(13, 3, -1, 'Beach Theme', 'beach.jpg', '-1.00', 'No shoes, no shirt, no service? Not with us. Time to kick back, throw on your swimsuits, and hit the party. We work hard to make sure that all your party needs are met no matter what the occasion. Get ready to hang 10 with all of your guests. Cowabunga!'),
(14, 3, -1, 'Winter Wonderland', 'winterwonder.jpg', '-1.00', 'Setting the scene for a Winter Wonderland theme couldn''t be easier with BlockParty! With our hanging snowflake decorations and a full assortment of winter-themed decor, you can transform your party and yard into a magical winter paradise in a matter of seconds.'),
(15, 3, -1, 'Vegas Theme', 'vegas.jpg', '-1.00', 'What happens in Vegas, stays in Vegas. But with Block Party, you can bring Vegas to your party. We offer an extensive selection of supplies and decorations needed to make your Blackjack Ball a blast. Who needs luck when you''re planning with us?'),
(16, 3, -1, 'Mardi Gras', 'mardigras.jpg', '-1.00', 'Why go to New Orleans when you can bring New Orleans to you? At BlockParty, we have the essentials needed to bring the Louisiana hype to your party. With crazy decorations and big brass music, our Mardi Gras Party is sure to please. Customizable packages ensure you get exactly what you desire from a trip to the French Quarter.'),
(17, 3, -1, 'Black Tie Event', 'formal.jpg', '-1.00', 'Our parties have all your must-haves for the classiest event of the year. Round up your guests and have them walk down the red carpet. Your honored guests will feel as if they''ve stepped into a professionally decorated banquet hall. With so many packages available, you are sure to find all you need for the right amount of people. '),
(18, 3, -1, 'Greek Theme', 'greek.jpg', '-1.00', 'Want your fraternity or sorority to be known as the best Greek house there is on campus? Want access to  amazing parties all year round? Let BlockParty help you throw a Greek Party even the gods and goddesses will enjoy with decorations fit for the gods. Our Greek party decorations will transform your venue into a mythological paradise set in the Mediterranean. Greek party favors will complete the formula for a divine party.'),
(19, 3, -1, 'Hawaiian Theme', 'hawaiian.jpg', '-1.00', 'Take a trip to the beautiful island of Oahu with a package from BlockParty. BlockParty will bring the swaying palm trees and smooth sands from Waikiki for you and your guests to enjoy. Aloha! '),
(20, 3, -1, 'Booming 50s', '50s.jpg', '-1.00', 'Get all the cool chicks and daddios to your birthday party with our Classic ''50s Party Supplies! Deck out with vinyl records, music staff and hot rod complete with fuzzy dice hanging in the windshield. Our classic ''50s Party include everything from  tableware to table decorations. Mix and match Classic ''50s Party Supplies with our solid color tableware, balloons and invitations for a custom party theme.'),
(23, 2, -1, 'Holiday', 'holiday.jpg', '80.38', 'Holidays are filled with beautiful moments surrounded by friends and family and with a purchase from BlockParty, you can be sure your celebration will be even more memorable without a single worry. We have all the necessary supplies you need to make it a Holiday party like none before. Whether it be a large Christmas Party, or an Easter get-together, you can be sure that BlockParty has everything you need for your special celebration. Includes: holiday themed decor. '),
(24, 2, -1, 'Birthdays', 'birthday.jpg', '100.00', 'Birthdays are very important events, and at BlockParty, we are dedicated to making sure each party is memorable. Young or old, you are bound to find everything you need to make sure your party is extravagant. With fast delivery and any last-minute changes, we guarantee you''ll have a great event without all the planning hassle.\nIncludes: birthday cake, balloons, and banner with age and name.'),
(25, 2, -1, 'Graduation', 'graduation.jpg', '280.00', 'You''ve toiled away for years of your life. You deserve to have your shining moment on a graduation stage surrounded by your closest friends. Don''t ruin this moment by stressing over the little details. Let us plan your graduation and you can focus on the more important things. \nIncludes: chairs, podium, microphone, and sound system.\n'),
(26, 2, -1, 'Keynote Speeches', 'keynote.jpg', '200.00', 'Accepting awards or discussing important topics are extremely important, and at BlockParty, we strive for professionalism when it comes to Keynote speeches. Whether you are holding a charity event or are directing change to your community, we have all the essentials to fulfill the needs of your event and guests. With customizable banners, signs, and tableware, you are certain to find everything you need for your special night. With easy setup and tech support, all you have to worry about is your speech. \nIncludes: one microphone (attached to podium) and sound board.'),
(27, 2, -1, 'Outdoor Events', 'outdoor.jpg', '120.00', 'Don''t feel confined by four walls. Enjoy the serenity of nature and let us take care of the set-up. If you want any type of occasion in the comfort of the Great Outdoors we''re here to offer you our services. \nIncludes: party tent and outdoor flooring.'),
(28, 2, -1, 'High School Dance', 'highschool.jpg', '157.00', 'Dealing with teenagers can be hard, but planning a party for them with BlockParty is far from it. We have everything you need to plan the perfect grad party, class bonding party, or a school dance. We offer customizable options to satisfy any picky teenager''s needs, making your whole party planning process a breeze. Includes: DJ and strobe lights.'),
(29, 2, -1, 'InstaRave', 'rave.jpg', '164.22', 'Bright lights, booming speakers, and high energy make for the best Rave experience possible. Let loose and feel the music as it booms louder than ever before with our state-of-the-art speaker system with large subwoofers ideal for producing that deep bass sound you crave at your rave. Our DJ''s know how to get the party started, and will keep you and your guests entertained all night long. Newest hits will get your guests pumped, and high energy will make your party one for the books. Let us provide the decorations, DJ, speakers, and everything in between. All you have to worry about is having enough energy to last the night! Book an InstaRave party with us and your guests will never be wanting to leave, making your party one they''ll never forget. \nIncludes: DJ and ambiance lighting.'),
(31, 4, 0, 'Snow-Cone Machine', 'snowcone.jpg', '30.00', 'Nothing hits the spot like a snow-cone on a hot summer day. BlockParty will help you beat the summer heat with top tier snow-cone machines at a comfortable price.'),
(33, 4, 0, 'Catering', 'contractedfood.jpg', '-1.00', 'We have food for every occasion. Through an exclusive partnership with Sysco food distribution, we’re able to offer you any style of food for a price that you can afford. \n'),
(35, 4, 1, 'Musical Performers ', 'musicalperformers.jpg', '-1.00', 'From a four string quartet to a Ethiopian electro-funk group, BlockParty will be able to address your needs with our vast resources. Please feel free to contact us for specific instructions.\n'),
(36, 4, 1, 'Dance Performers', 'dancers.jpg', '-1.00', 'Stand out from all the other parties and have a dance performer that fits your party. Make it easy with a purchase through BlockParty. No need to hassle to watch the performance of a lifetime.'),
(39, 4, 3, 'Wireless Mics ', 'wirelessmic.jpg', '20.00', 'Do you need your voice to be heard? Clearly everyone loves the sound of your voice. Make sure that everyone can hear exactly what you want them to hear with our high-def microphones. Just like the In-line Mic, but wireless. Wow!\n'),
(40, 4, 3, 'Wired Mics', 'wiredmic.jpg', '10.00', 'Do you need your voice to be heard? Clearly everyone loves the sound of your voice. Make sure that everyone can hear exactly what you want them to hear with our high-def microphones. \n'),
(41, 4, 3, 'Speakers ', 'speaker.jpg', '50.00', 'Nothing gets your guests’ attention like sound. Broadcast whatever media and whatever voice you want to. Control the pulse of your party with sound.'),
(42, 4, 3, 'Sound System', 'soundsystem.jpg', '45.00', 'Give yourself total control of all audio that goes through your party. Whether you need a presentation or music, make your life easy and choose BlockParty.'),
(43, 4, 3, 'Screen', 'screen.jpg', '30.00', 'If you need anything video, presentation or anything that requires media, BlockParty is here to make your life easier. Setting up a screen is a bunch of unnecessary stress. Make it easy with our instant setup \nstructure. \n \n'),
(44, 4, 4, 'Specialized Lighting', 'speclights.jpg', '-1.00', 'Ranging from soft, elegant shades to flashing strobe lights, BlockParty’s customizable packages will prepare you for any situation. Feel free to contact us for more specific instructions.\n'),
(48, 4, 3, 'Subwoofer', 'subwoofer.jpg', '40.00', 'Music is the life of the party. Experience music in a new way with subwoofers guaranteed to deepen the bass and add a new dimension to your party.  ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;