DROP DATABASE IF EXISTS `mydb`;  

CREATE DATABASE `mydb`;

USE mydb;

DROP TABLE IF EXISTS `product`;

create table product(
id int AUTO_INCREMENT PRIMARY KEY,
name varchar(40),
description varchar(200),
price decimal(8,2) 
);

DROP TABLE IF EXISTS `coupon`;
create table coupon(
id int AUTO_INCREMENT PRIMARY KEY,
code varchar(20),
discount decimal(8,3),
exp_date varchar(100) 
);

drop table if exists users;

create table users(
 id int auto_increment primary key,
 username varchar(50) unique not null,
 password varchar(50) not null,
 enabled boolean not null
)auto_increment=101;

drop table if exists authorities;

create table authorities (
	id int auto_increment primary key,
	username varchar(50) not null,
	authority varchar(50) not null
)auto_increment=101;

create unique index ix_auth_username on authorities (username,authority);


insert into users (username, password, enabled) values ("craig", "password", true);
insert into users (username, password, enabled) values ("john", "john123", true);

insert into authorities(username, authority) values("craig", "admin");
insert into authorities(username, authority) values("john", "read");


-- select * from product;

-- select * from coupon;

INSERT INTO product (name, description, price) VALUES ("Samsung Galaxy Book Pro 360", "Stay productive on-the-go with the Samsung Galaxy Book Pro 360 convertible laptop featuring a vibrant AMOLED display.", 1299.99);
INSERT INTO product (name, description, price) VALUES ("Apple iPad Air 5", "Unlock creativity and productivity with the Apple iPad Air 5 tablet featuring the powerful A15 Bionic chip.", 599.95);
INSERT INTO product (name, description, price) VALUES ("Dell UltraSharp 32 HDR PremierColor", "Experience stunning visuals and color accuracy with the Dell UltraSharp 32 HDR PremierColor monitor.", 1599.90);
INSERT INTO product (name, description, price) VALUES ("Logitech G935 Wireless Gaming Headset", "Immerse yourself in gaming audio with the Logitech G935 wireless gaming headset featuring 7.1 surround sound.", 169.95);
INSERT INTO product (name, description, price) VALUES ("Bose Frames Audio Sunglasses", "Listen to music discreetly and stylishly with the Bose Frames audio sunglasses featuring built-in speakers.", 249.90);
INSERT INTO product (name, description, price) VALUES ("LG Gram 17", "Enjoy portability without compromise with the LG Gram 17 laptop featuring a lightweight yet durable design.", 1499.99);
INSERT INTO product (name, description, price) VALUES ("Microsoft Surface Studio 3", "Unleash your creativity with the Microsoft Surface Studio 3 all-in-one desktop featuring a stunning PixelSense display.", 3499.95);
INSERT INTO product (name, description, price) VALUES ("Asus ROG Ryujin 360", "Keep your CPU cool and stylish with the Asus ROG Ryujin 360 liquid CPU cooler featuring customizable OLED display.", 299.99);
INSERT INTO product (name, description, price) VALUES ("Corsair Virtuoso RGB Wireless XT", "Experience high-fidelity audio and wireless freedom with the Corsair Virtuoso RGB Wireless XT gaming headset.", 279.99);
INSERT INTO product (name, description, price) VALUES ("Razer Naga X", "Enhance your gaming performance with the Razer Naga X gaming mouse featuring 16 programmable buttons.", 79.95);
INSERT INTO product (name, description, price) VALUES ("Intel Core i5-12600K", "Unlock performance and efficiency with the Intel Core i5-12600K desktop processor featuring Intel 12th Gen technology.", 299.99);
INSERT INTO product (name, description, price) VALUES ("AMD Ryzen 7 5700G", "Experience powerful gaming and multitasking performance with the AMD Ryzen 7 5700G processor featuring Radeon graphics.", 349.95);
INSERT INTO product (name, description, price) VALUES ("Nvidia GeForce RTX 3070 Ti", "Experience smooth gaming and ray-traced visuals with the Nvidia GeForce RTX 3070 Ti graphics card.", 599.90);
INSERT INTO product (name, description, price) VALUES ("Samsung Odyssey G3 27-Inch", "Enjoy smooth gaming visuals with the Samsung Odyssey G3 27-Inch gaming monitor featuring a high refresh rate.", 299.99);
INSERT INTO product (name, description, price) VALUES ("Apple AirTag", "Keep track of your belongings with the Apple AirTag featuring precision location tracking and privacy protection.", 29.99);
INSERT INTO product (name, description, price) VALUES ("Google Nest Hub Max", "Stay connected and entertained with the Google Nest Hub Max smart display featuring a large touchscreen.", 229.90);
INSERT INTO product (name, description, price) VALUES ("HP Omen Sequencer", "Take your gaming to the next level with the HP Omen Sequencer mechanical gaming keyboard featuring customizable RGB lighting.", 149.99);
INSERT INTO product (name, description, price) VALUES ("JBL Quantum 800", "Immerse yourself in gaming audio with the JBL Quantum 800 wireless gaming headset featuring active noise cancellation.", 199.95);
INSERT INTO product (name, description, price) VALUES ("Amazon Fire HD 10", "Enjoy entertainment on-the-go with the Amazon Fire HD 10 tablet featuring a vibrant 10.1-inch display.", 149.99);
INSERT INTO product (name, description, price) VALUES ("Sony Alpha a7 IV", "Capture stunning photos and videos with the Sony Alpha a7 IV mirrorless camera featuring advanced autofocus.", 2499.99);
INSERT INTO product (name, description, price) VALUES ("Samsung QN90A Neo QLED TV", "Transform your entertainment experience with the Samsung QN90A Neo QLED TV featuring stunning picture quality and immersive sound.", 2499.99);
INSERT INTO product (name, description, price) VALUES ("Apple iPad Air 5", "Unleash your creativity and productivity with the Apple iPad Air 5 tablet featuring a powerful chip and stunning Liquid Retina display.", 599.95);
INSERT INTO product (name, description, price) VALUES ("Dell UltraSharp U4320Q", "Enhance your productivity with the Dell UltraSharp U4320Q 4K monitor featuring a large screen and versatile connectivity options.", 899.99);
INSERT INTO product (name, description, price) VALUES ("Logitech G915 TKL", "Dominate your gaming sessions with the Logitech G915 TKL wireless mechanical gaming keyboard featuring low-profile switches and customizable RGB lighting.", 229.95);
INSERT INTO product (name, description, price) VALUES ("Bose Frames Tenor", "Enjoy immersive audio and stylish design with the Bose Frames Tenor audio sunglasses featuring built-in speakers and advanced audio technologies.", 249.90);
INSERT INTO product (name, description, price) VALUES ("LG C1 OLED 55-Inch", "Experience cinematic visuals at home with the LG C1 OLED 55-Inch smart TV featuring Dolby Vision IQ and AI-enhanced picture quality.", 1799.99);
INSERT INTO product (name, description, price) VALUES ("Microsoft Surface Laptop Studio", "Elevate your creativity with the Microsoft Surface Laptop Studio featuring a versatile design and powerful performance for professionals.", 1599.99);
INSERT INTO product (name, description, price) VALUES ("Asus ROG Delta S", "Immerse yourself in crystal-clear gaming audio with the Asus ROG Delta S gaming headset featuring hi-res ESS Quad-DAC and AI noise cancellation.", 149.99);
INSERT INTO product (name, description, price) VALUES ("Corsair K70 RGB TKL", "Take your gaming to the next level with the Corsair K70 RGB TKL mechanical gaming keyboard featuring tournament-grade performance and customizable RGB lighting.", 139.99);
INSERT INTO product (name, description, price) VALUES ("Razer DeathAdder V2 Pro", "Achieve precision and speed in gaming with the Razer DeathAdder V2 Pro wireless gaming mouse featuring advanced optical sensor and ergonomic design.", 129.99);
INSERT INTO product (name, description, price) VALUES ("Intel Core i5-12600K", "Experience smooth multitasking and gaming performance with the Intel Core i5-12600K desktop processor featuring Intel Thread Director and DDR5 support.", 279.99);
INSERT INTO product (name, description, price) VALUES ("AMD Ryzen 7 5800X3D", "Unleash unrivaled gaming and multitasking performance with the AMD Ryzen 7 5800X3D processor featuring 3D V-Cache technology and Zen 3 architecture.", 449.95);
INSERT INTO product (name, description, price) VALUES ("Nvidia GeForce RTX 3070 Ti", "Immerse yourself in ray-traced gaming experiences with the Nvidia GeForce RTX 3070 Ti graphics card featuring DLSS and real-time ray tracing.", 599.90);
INSERT INTO product (name, description, price) VALUES ("Samsung Galaxy Watch 5", "Stay connected and track your fitness with the Samsung Galaxy Watch 5 smartwatch featuring advanced health monitoring and LTE connectivity.", 349.99);
INSERT INTO product (name, description, price) VALUES ("Apple AirPods Max", "Experience immersive audio and exceptional comfort with the Apple AirPods Max over-ear headphones featuring high-fidelity sound and active noise cancellation.", 549.99);
INSERT INTO product (name, description, price) VALUES ("Google Pixel 7", "Capture every moment in stunning detail with the Google Pixel 7 smartphone featuring an advanced camera system and AI-powered features.", 699.90);
INSERT INTO product (name, description, price) VALUES ("HP Omen 30L", "Dominate your gaming battles with the HP Omen 30L gaming desktop featuring powerful hardware and customizable RGB lighting.", 1699.95);
INSERT INTO product (name, description, price) VALUES ("JBL Quantum 800", "Experience immersive gaming audio with the JBL Quantum 800 wireless gaming headset featuring JBL QuantumSURROUND and Active Noise Cancelling.", 199.95);
INSERT INTO product (name, description, price) VALUES ("Amazon Echo Dot 4th Gen", "Enjoy hands-free convenience and smart home control with the Amazon Echo Dot 4th Gen smart speaker featuring Alexa voice assistant.", 49.99);
INSERT INTO product (name, description, price) VALUES ("Sony WF-1000XM4", "Immerse yourself in music with the Sony WF-1000XM4 wireless noise-canceling earbuds featuring Hi-Res Audio and Adaptive Sound Control.", 279.99);
INSERT INTO product (name, description, price) VALUES ("Samsung Odyssey Neo G9", "Experience immersive gaming like never before with the Samsung Odyssey Neo G9 gaming monitor.", 2199.99);
INSERT INTO product (name, description, price) VALUES ("Apple iPhone 15 Pro Max", "Discover the pinnacle of mobile technology with the Apple iPhone 15 Pro Max smartphone.", 1499.95);
INSERT INTO product (name, description, price) VALUES ("Dell Alienware Aurora R14", "Unleash your gaming potential with the power-packed Dell Alienware Aurora R14 gaming desktop.", 2899.99);
INSERT INTO product (name, description, price) VALUES ("Logitech MX Master 3", "Achieve maximum productivity with the precision and comfort of the Logitech MX Master 3 wireless mouse.", 99.95);
INSERT INTO product (name, description, price) VALUES ("Bose SoundLink Revolve+", "Enjoy 360-degree sound and portability with the Bose SoundLink Revolve+ Bluetooth speaker.", 299.90);
INSERT INTO product (name, description, price) VALUES ("LG UltraGear 27GP950", "Experience smooth gaming visuals with the LG UltraGear 27GP950 4K gaming monitor.", 799.99);
INSERT INTO product (name, description, price) VALUES ("Microsoft Xbox Series X", "Enter the next generation of gaming with the Microsoft Xbox Series X gaming console.", 499.95);
INSERT INTO product (name, description, price) VALUES ("Asus ROG Swift PG259QN", "Stay ahead of the competition with the Asus ROG Swift PG259QN gaming monitor featuring a blazing-fast refresh rate.", 699.99);
INSERT INTO product (name, description, price) VALUES ("Corsair HS80 RGB Wireless", "Immerse yourself in gaming audio with the Corsair HS80 RGB Wireless gaming headset featuring high-fidelity sound.", 149.99);
INSERT INTO product (name, description, price) VALUES ("Razer Huntsman Elite", "Elevate your gaming performance with the Razer Huntsman Elite mechanical gaming keyboard featuring lightning-fast switches.", 199.95);
INSERT INTO product (name, description, price) VALUES ("Intel Core i7-12700K", "Experience powerful multitasking and gaming performance with the Intel Core i7-12700K desktop processor.", 449.99);
INSERT INTO product (name, description, price) VALUES ("AMD Radeon RX 7900 XT", "Dominate the gaming landscape with the AMD Radeon RX 7900 XT graphics card delivering exceptional performance.", 799.90);
INSERT INTO product (name, description, price) VALUES ("Nvidia GeForce RTX 4090", "Unleash the ultimate gaming experience with the Nvidia GeForce RTX 4090 graphics card featuring groundbreaking technology.", 1999.99);
INSERT INTO product (name, description, price) VALUES ("Samsung Galaxy Tab S8 Ultra", "Experience productivity on-the-go with the Samsung Galaxy Tab S8 Ultra tablet featuring a stunning display.", 1099.90);
INSERT INTO product (name, description, price) VALUES ("Apple Watch Series 8", "Stay connected and active with the Apple Watch Series 8 smartwatch featuring advanced health tracking.", 399.99);
INSERT INTO product (name, description, price) VALUES ("Google Pixelbook Pro", "Achieve productivity and style with the Google Pixelbook Pro laptop featuring Chrome OS.", 999.95);
INSERT INTO product (name, description, price) VALUES ("HP Envy 34 All-in-One", "Immerse yourself in cinematic experiences with the HP Envy 34 All-in-One desktop featuring a curved display.", 1699.99);
INSERT INTO product (name, description, price) VALUES ("JBL Quantum One", "Experience unparalleled gaming audio with the JBL Quantum One gaming headset featuring immersive sound.", 299.95);
INSERT INTO product (name, description, price) VALUES ("Amazon Kindle Oasis", "Indulge in reading with the Amazon Kindle Oasis e-reader featuring a high-resolution display and waterproof design.", 279.90);
INSERT INTO product (name, description, price) VALUES ("Sony WH-1000XM5", "Immerse yourself in music with the Sony WH-1000XM5 wireless noise-canceling headphones featuring industry-leading noise cancellation.", 349.99);
INSERT INTO product (name, description, price) VALUES ("Samsung Galaxy S22 Ultra", "Experience the ultimate in mobile technology with the Samsung Galaxy S22 Ultra smartphone.", 1199.99);
INSERT INTO product (name, description, price) VALUES ("Apple MacBook Pro M2", "Unleash your creativity with the power and performance of the Apple MacBook Pro M2 laptop.", 1799.95);
INSERT INTO product (name, description, price) VALUES ("Sony PlayStation 6", "Immerse yourself in next-generation gaming with the Sony PlayStation 6 gaming console.", 499.90);
INSERT INTO product (name, description, price) VALUES ("Dell XPS 17", "Get unparalleled performance and stunning visuals with the Dell XPS 17 laptop.", 2099.99);
INSERT INTO product (name, description, price) VALUES ("Logitech G Pro X Superlight", "Dominate the competition with the Logitech G Pro X Superlight wireless gaming mouse.", 149.95);
INSERT INTO product (name, description, price) VALUES ("Bose QuietComfort 45", "Escape into your music with the comfort and clarity of the Bose QuietComfort 45 headphones.", 329.90);
INSERT INTO product (name, description, price) VALUES ("LG OLED C2 65-Inch", "Transform your entertainment experience with the stunning LG OLED C2 65-Inch smart TV.", 2799.99);
INSERT INTO product (name, description, price) VALUES ("Microsoft Surface Pro 8", "Unleash your productivity with the versatility of the Microsoft Surface Pro 8 tablet.", 999.99);
INSERT INTO product (name, description, price) VALUES ("Asus ROG Strix Scar 15", "Elevate your gaming experience with the power-packed Asus ROG Strix Scar 15 laptop.", 2399.95);
INSERT INTO product (name, description, price) VALUES ("Corsair K95 RGB Platinum XT", "Take your gaming to the next level with the customizable Corsair K95 RGB Platinum XT mechanical keyboard.", 199.99);
INSERT INTO product (name, description, price) VALUES ("Razer Blade 15", "Experience gaming perfection with the sleek and powerful Razer Blade 15 gaming laptop.", 1799.95);
INSERT INTO product (name, description, price) VALUES ("Intel Core i9-12900K", "Unleash unparalleled performance with the Intel Core i9-12900K desktop processor.", 649.99);
INSERT INTO product (name, description, price) VALUES ("AMD Ryzen 9 5950X", "Experience elite gaming and content creation performance with the AMD Ryzen 9 5950X processor.", 799.95);
INSERT INTO product (name, description, price) VALUES ("Nvidia GeForce RTX 4080 Ti", "Dominate the gaming arena with the unrivaled power of the Nvidia GeForce RTX 4080 Ti graphics card.", 1499.90);
INSERT INTO product (name, description, price) VALUES ("Samsung Odyssey G9", "Immerse yourself in gaming glory with the ultra-wide Samsung Odyssey G9 gaming monitor.", 1499.99);
INSERT INTO product (name, description, price) VALUES ("Apple AirPods Pro", "Experience superior sound and active noise cancellation with the Apple AirPods Pro wireless earbuds.", 249.99);
INSERT INTO product (name, description, price) VALUES ("Google Pixel 7 Pro", "Capture every moment in stunning detail with the Google Pixel 7 Pro smartphone.", 899.90);
INSERT INTO product (name, description, price) VALUES ("HP Spectre x360", "Experience elegance and versatility with the HP Spectre x360 convertible laptop.", 1299.95);
INSERT INTO product (name, description, price) VALUES ("JBL Flip 6", "Take your music anywhere with the portable and waterproof JBL Flip 6 Bluetooth speaker.", 129.99);
INSERT INTO product (name, description, price) VALUES ("Amazon Echo Show 15", "Stay connected and organized with the Amazon Echo Show 15 smart display.", 299.90);
INSERT INTO product (name, description, price) VALUES ("Smart Thermostat Plus", "Control your home's temperature intelligently with this advanced smart thermostat.", 149.99);
INSERT INTO product (name, description, price) VALUES ("VR Gaming Headset Elite", "Immerse yourself in virtual reality worlds with this high-performance gaming headset.", 299.95);
INSERT INTO product (name, description, price) VALUES ("Wireless Charging Pad", "Charge your devices effortlessly with this sleek and convenient wireless charging pad.", 49.90);
INSERT INTO product (name, description, price) VALUES ("Portable Bluetooth Speaker", "Take your music anywhere with this portable Bluetooth speaker featuring rich sound.", 79.99);
INSERT INTO product (name, description, price) VALUES ("Smart Doorbell Pro", "Upgrade your home security with this smart doorbell that lets you see and speak to visitors.", 179.99);
INSERT INTO product (name, description, price) VALUES ("High-Speed USB-C Cable", "Transfer data and charge your devices quickly with this durable USB-C cable.", 19.95);
INSERT INTO product (name, description, price) VALUES ("4K Ultra HD Monitor", "Experience stunning visuals and vibrant colors with this 4K Ultra HD monitor for your computer.", 399.90);
INSERT INTO product (name, description, price) VALUES ("Wireless Ergonomic Mouse", "Work comfortably and efficiently with this wireless ergonomic mouse designed for reduced wrist strain.", 59.99);
INSERT INTO product (name, description, price) VALUES ("Smart WiFi Router", "Optimize your home network and enjoy seamless connectivity with this advanced smart WiFi router.", 129.99);
INSERT INTO product (name, description, price) VALUES ("Noise-Canceling Earbuds", "Block out distractions and enjoy crystal-clear audio with these noise-canceling earbuds.", 129.95);
INSERT INTO product (name, description, price) VALUES ("Smart Fitness Tracker", "Track your fitness goals and monitor your health with this sleek and intuitive smart fitness tracker.", 89.90);
INSERT INTO product (name, description, price) VALUES ("Mechanical Gaming Mousepad", "Enhance your gaming performance with this precision-engineered mechanical gaming mousepad.", 34.99);
INSERT INTO product (name, description, price) VALUES ("Dual-Band WiFi Range Extender", "Extend the range of your WiFi network and eliminate dead zones with this dual-band WiFi range extender.", 69.99);
INSERT INTO product (name, description, price) VALUES ("Wireless Charging Mouse", "Stay powered up and clutter-free with this innovative wireless charging mouse.", 79.95);
INSERT INTO product (name, description, price) VALUES ("Smart LED Light Bulbs", "Transform your home's lighting with these energy-efficient and customizable smart LED light bulbs.", 39.99);
INSERT INTO product (name, description, price) VALUES ("High-Performance Graphics Card", "Boost your gaming and graphics-intensive tasks with this high-performance graphics card.", 499.99);
INSERT INTO product (name, description, price) VALUES ("Smart Door Lock", "Secure your home with this keyless entry smart door lock featuring advanced security features.", 249.95);
INSERT INTO product (name, description, price) VALUES ("Bluetooth Noise-Canceling Headphones", "Immerse yourself in your music or calls with these Bluetooth headphones featuring active noise-canceling technology.", 149.99);
INSERT INTO product (name, description, price) VALUES ("Wireless Charging Car Mount", "Charge your phone wirelessly and keep it within easy reach while driving with this convenient car mount.", 59.90);
INSERT INTO product (name, description, price) VALUES ("Portable External SSD Drive", "Store and transfer your files quickly and securely with this portable external SSD drive.", 179.99);
INSERT INTO product (name, description, price) VALUES ("Smart Display Home", "Enhance your home with information and entertainment through this voice-activated smart display.", 129.99);
INSERT INTO product (name, description, price) VALUES ("Gaming Keyboard RGB", "Customize your lighting and gameplay with this vibrant and responsive gaming keyboard.", 99.95);
INSERT INTO product (name, description, price) VALUES ("Wireless Headphones Flex", "Enjoy comfortable and flexible listening with these wireless headphones.", 179.90);
INSERT INTO product (name, description, price) VALUES ("Security Camera Pro", "Monitor your home or business with this high-definition security camera with night vision.", 199.99);
INSERT INTO product (name, description, price) VALUES ("Portable Speaker Mini", "Share your music anywhere with this powerful and portable speaker.", 49.99);
INSERT INTO product (name, description, price) VALUES ("Gaming Controller Elite", "Take your gaming experience to the next level with this precise and customizable controller.", 69.99);
INSERT INTO product (name, description, price) VALUES ("Virtual Reality Glasses Lite", "Experience virtual reality without breaking the bank with these affordable VR glasses.", 99.95);
INSERT INTO product (name, description, price) VALUES ("Smartwatch Sport+", "Track your workouts and stay connected in style with this sporty and feature-packed smartwatch.", 199.00);
INSERT INTO product (name, description, price) VALUES ("Gaming Monitor Ultra", "Dominate your opponents with this high-resolution and responsive gaming monitor.", 399.99);
INSERT INTO product (name, description, price) VALUES ("Noise-Cancelling Headphones Pro", "Immerse yourself in your music and block out distractions with these high-quality noise-cancelling headphones.", 349.90);
INSERT INTO product (name, description, price) VALUES ("Smartwatch Classic", "Stay connected and stylish with this elegant and functional smartwatch.", 249.99);
INSERT INTO product (name, description, price) VALUES ("Gaming Router Fury", "Experience lag-free online gaming with this powerful and reliable gaming router.", 149.95);
INSERT INTO product (name, description, price) VALUES ("Wireless Charger Pad", "Charge your phone wirelessly and conveniently with this sleek and compact charging pad.", 29.99);
INSERT INTO product (name, description, price) VALUES ("Fitness Tracker Lite", "Stay motivated and track your progress with this affordable and easy-to-use fitness tracker.", 49.99);
INSERT INTO product (name, description, price) VALUES ("Smart Bulb Color", "Transform your home's ambiance with millions of colors and voice control with this smart bulb.", 24.99);
INSERT INTO product (name, description, price) VALUES ("Virtual Reality Headset Max", "Experience the ultimate in virtual reality with this high-end headset and powerful controllers.", 799.99);
INSERT INTO product (name, description, price) VALUES ("Gaming Chair Comfort", "Upgrade your gaming setup with this ergonomic and comfortable gaming chair.", 299.90);
INSERT INTO product (name, description, price) VALUES ("Smart Thermostat Eco", "Save energy and stay comfortable with this smart thermostat that learns your preferences.", 199.99);
INSERT INTO product (name, description, price) VALUES ("Portable Projector Max", "Enjoy the big screen experience anywhere with this powerful and portable projector.", 499.95);
INSERT INTO product (name, description, price) VALUES ("Instant Camera Mini", "Capture nostalgic photos with this fun and easy-to-use instant camera.", 79.99);
INSERT INTO product (name, description, price) VALUES ("Smartwatch Kids", "Keep your child connected and safe with this fun and functional smartwatch for kids.", 99.90);
INSERT INTO product (name, description, price) VALUES ("Portable Printer Pocket", "Print photos and documents on the go with this compact and convenient portable printer.", 149.95);
INSERT INTO product (name, description, price) VALUES ("Smart TV LED", "Enjoy stunning picture quality and smart features with this high-definition LED smart TV.", 399.99);
INSERT INTO product (name, description, price) VALUES ("Gaming Mouse Wireless", "Enjoy the freedom of wireless gaming with this responsive and accurate gaming mouse.", 99.95);
INSERT INTO product (name, description, price) VALUES ("Wireless Earbuds Pro+", "Experience superior sound quality and seamless connectivity with these premium wireless earbuds.", 199.90);
INSERT INTO product (name, description, price) VALUES ("Smart Dishwasher Wi-Fi", "Simplify your home life with this connected dishwasher that you can control remotely.", 599.99);
INSERT INTO product (name, description, price) VALUES ("Robot Vacuum Cleaner", "Keep your floors clean effortlessly with this automatic robot vacuum cleaner.", 299.99);
INSERT INTO product (name, description, price) VALUES ("Portable Blender Personal", "Make smoothies and shakes on the go with this convenient and powerful personal blender.", 49.99);
INSERT INTO product (name, description, price) VALUES ("Coffee Machine Smart", "Brew your perfect cup of coffee every time with this smart coffee machine with voice control.", 199.99);
INSERT INTO product (name, description, price) VALUES ("Smart Lock Home", "Upgrade your home security with this convenient and keyless smart lock.", 149.95);
INSERT INTO product (name, description, price) VALUES ("Air Purifier Smart", "Breathe cleaner air with this smart air purifier that automatically adjusts to your needs.", 199.90);
INSERT INTO product (name, description, price) VALUES ("Mini Fridge Portable", "Keep your drinks and snacks cool on the go with this compact and portable mini fridge.", 49.99);
INSERT INTO product (name, description, price) VALUES ("Electric Scooter Pro", "Experience the thrill of eco-friendly transportation with this powerful and portable electric scooter.", 499.95);
INSERT INTO product (name, description, price) VALUES ("Smart Speaker Mini", "Enjoy rich sound and voice control with this compact and affordable smart speaker.", 49.99);
INSERT INTO product (name, description, price) VALUES ("Fitness Tracker Pro+", "Track your fitness goals and analyze your performance with this advanced fitness tracker.", 199.90);
INSERT INTO product (name, description, price) VALUES ("Gaming Headset Wireless", "Immerse yourself in the game with this wireless gaming headset that delivers clear sound and communication.", 149.99);
INSERT INTO product (name, description, price) VALUES ("Smartwatch Active", "Stay active and connected with this versatile and stylish smartwatch for fitness enthusiasts.", 149.95);
INSERT INTO product (name, description, price) VALUES ("Portable Projector Pico", "Project movies and presentations anywhere with this ultra-portable pico projector.", 199.99);
INSERT INTO product (name, description, price) VALUES ("Smartwatch Kids+", "Encourage outdoor adventures and stay connected with this advanced smartwatch for kids with GPS tracking.", 149.90);
INSERT INTO product (name, description, price) VALUES ("Wireless Charger Stand", "Charge your phone upright and conveniently with this stylish and functional wireless charger stand.", 39.99);
INSERT INTO product (name, description, price) VALUES ("Smart Home Hub Mini", "Control your smart home devices with your voice using this compact and affordable smart home hub.", 49.99);
INSERT INTO product (name, description, price) VALUES ("Gaming Keyboard Mechanical", "Experience the satisfying feel of mechanical keys and superior performance with this gaming keyboard.", 149.95);
INSERT INTO product (name, description, price) VALUES ("Action Camera 360", "Capture immersive 360-degree videos and photos with this versatile action camera.", 399.99);
INSERT INTO product (name, description, price) VALUES ("Smartwatch Luxury", "Make a statement with this elegant and feature-packed smartwatch crafted from premium materials.", 499.90);
INSERT INTO product (name, description, price) VALUES ("Smart Speaker Max", "Enjoy powerful sound and room-filling audio with this high-performance smart speaker.", 299.99);
INSERT INTO product (name, description, price) VALUES ("Gaming Laptop Mini", "Experience portable gaming power with this compact and powerful gaming laptop.", 999.95);
INSERT INTO product (name, description, price) VALUES ("Smartwatch Lite", "Stay connected and track your basic fitness activities with this affordable and easy-to-use smartwatch.", 69.99);
INSERT INTO product (name, description, price) VALUES ("Wireless Earbuds Budget", "Enjoy good sound quality and affordability with these basic wireless earbuds.", 39.99);
INSERT INTO product (name, description, price) VALUES ("Smart Bulb White", "Control your lighting and create ambiance with this smart bulb that offers warm white light.", 19.99);
INSERT INTO product (name, description, price) VALUES ("Portable Projector Entertainment", "Enjoy movie nights anywhere with this versatile portable projector for entertainment.", 249.95);
INSERT INTO product (name, description, price) VALUES ("Fitness Tracker Clip", "Easily track your steps, distance, and calories with this convenient clip-on fitness tracker.", 29.99);
INSERT INTO product (name, description, price) VALUES ("Smartwatch Solar", "Never run out of power with this eco-friendly smartwatch that charges from the sun.", 199.90);
INSERT INTO product (name, description, price) VALUES ("Gaming Mouse Lightweight", "Move with lightning speed and precision with this ultra-lightweight gaming mouse.", 79.99);
INSERT INTO product (name, description, price) VALUES ("Smart Scale Wi-Fi", "Track your weight, body composition, and health metrics with this connected smart scale.", 99.95);
INSERT INTO product (name, description, price) VALUES ("Wireless Charger Duo", "Charge your phone and another device simultaneously with this convenient wireless charger duo.", 59.99);
INSERT INTO product (name, description, price) VALUES ("Smart Thermostat Learning", "Save energy and enjoy optimal comfort with this smart thermostat that learns your preferences.", 169.99);
INSERT INTO product (name, description, price) VALUES ("Portable Projector Cinema", "Transform any space into a home theater with this high-resolution portable projector for cinema-quality viewing.", 799.95);
INSERT INTO product (name, description, price) VALUES ("Smartwatch Fashion", "Express your style and stay connected with this fashionable and feature-packed smartwatch.", 199.99);
INSERT INTO product (name, description, price) VALUES ("Smart Home Hub Pro", "Control your entire smart home seamlessly with this advanced and powerful hub.", 249.99);
INSERT INTO product (name, description, price) VALUES ("Gaming Router AX", "Experience next-level Wi-Fi performance and eliminate lag with this high-speed gaming router.", 299.95);
INSERT INTO product (name, description, price) VALUES ("Virtual Reality Headset Lite+", "Experience virtual reality at a more affordable price with this feature-packed VR headset.", 199.90);
INSERT INTO product (name, description, price) VALUES ("Smartwatch Rugged", "Built to withstand any adventure, this rugged smartwatch tracks your activity and keeps you connected even in harsh environments.", 199.99);
INSERT INTO product (name, description, price) VALUES ("Gaming Keyboard Wireless Pro", "Enjoy the freedom of wireless gaming with this high-performance and customizable keyboard.", 199.95);
INSERT INTO product (name, description, price) VALUES ("Smart Display Assistant", "Get help with your daily tasks and control your smart home with this voice-activated smart display.", 99.99);
INSERT INTO product (name, description, price) VALUES ("Gaming Mouse MMO", "Dominate the competition with this MMO-optimized gaming mouse featuring multiple buttons and macros.", 99.90);
INSERT INTO product (name, description, price) VALUES ("Wireless Charger Trio", "Charge three devices simultaneously with this convenient and powerful wireless charger trio.", 79.99);
INSERT INTO product (name, description, price) VALUES ("Smart Vacuum Cleaner Robot Pro", "Effortlessly clean your entire home with this advanced robot vacuum cleaner with obstacle avoidance and mapping.", 599.95);
INSERT INTO product (name, description, price) VALUES ("Portable Blender Family", "Make smoothies and frozen drinks for the whole family with this powerful and convenient blender.", 79.99);
INSERT INTO product (name, description, price) VALUES ("Coffee Machine Bean-to-Cup", "Enjoy cafe-quality coffee at home with this bean-to-cup coffee machine that grinds and brews fresh beans.", 299.90);
INSERT INTO product (name, description, price) VALUES ("Smart Fridge Wi-Fi", "Take control of your groceries and simplify meal planning with this connected smart fridge.", 1499.95);
INSERT INTO product (name, description, price) VALUES ("Robot Vacuum Cleaner Mop", "Clean both carpets and hard floors effortlessly with this versatile robot vacuum cleaner that also mops.", 399.99);
INSERT INTO product (name, description, price) VALUES ("Portable Speaker Rugged", "Enjoy powerful sound and durability on any adventure with this rugged and waterproof portable speaker.", 99.90);
INSERT INTO product (name, description, price) VALUES ("Fitness Tracker Kids", "Encourage kids to be active and healthy with this fun and colorful fitness tracker designed for them.", 49.99);
INSERT INTO product (name, description, price) VALUES ("Gaming Headset Noise Cancelling", "Block out distractions and immerse yourself in the game with this noise-cancelling gaming headset.", 249.95);
INSERT INTO product (name, description, price) VALUES ("Smartwatch Health", "Track your health metrics and monitor your wellbeing with this advanced smartwatch that includes heart rate monitoring, sleep tracking, and more.", 299.90);
INSERT INTO product (name, description, price) VALUES ("Portable Projector Business", "Make presentations and share content on the go with this compact and portable projector for business use.", 299.99);
INSERT INTO product (name, description, price) VALUES ("Smart Lock Fingerprint", "Enjoy keyless convenience and enhanced security with this fingerprint-enabled smart lock.", 199.95);
INSERT INTO product (name, description, price) VALUES ("Air Purifier HEPA", "Breathe cleaner air and eliminate allergens with this high-performance HEPA air purifier.", 249.99);
INSERT INTO product (name, description, price) VALUES ("Mini Fridge Retro", "Add a touch of vintage style to your kitchen with this compact and stylish retro mini fridge.", 99.99);
INSERT INTO product (name, description, price) VALUES ("Electric Scooter Pro+", "Experience even more power and range with this upgraded electric scooter featuring longer battery life and faster speeds.", 699.95);
INSERT INTO product (name, description, price) VALUES ("Smart Speaker Portable", "Enjoy rich sound and voice control anywhere you go with this portable and weatherproof smart speaker.", 149.90);
INSERT INTO product (name, description, price) VALUES ("Fitness Tracker Stylish", "Track your fitness goals and look good doing it with this stylish and discreet fitness tracker.", 99.99);
INSERT INTO product (name, description, price) VALUES ("Gaming Mouse Wired Pro", "Enjoy ultimate precision and control with this high-performance wired gaming mouse designed for esports professionals.", 149.95);
INSERT INTO product (name, description, price) VALUES ("Smart Home Hub Light", "Control your basic smart home devices with your voice using this affordable and easy-to-use smart home hub.", 29.99);
INSERT INTO product (name, description, price) VALUES ("Gaming Keyboard TKL", "Save space on your desk without sacrificing performance with this tenkeyless mechanical gaming keyboard.", 129.99);
INSERT INTO product (name, description, price) VALUES ("Action Camera 4K", "Capture stunning high-resolution videos and photos with this advanced action camera.", 499.99);
INSERT INTO product (name, description, price) VALUES ("Smartwatch Classic+", "Enjoy a timeless design and premium materials with this upgraded classic smartwatch.", 399.90);
INSERT INTO product (name, description, price) VALUES ("Smart Speaker Stereo", "Experience immersive stereo sound and room-filling audio with this powerful smart speaker system.", 499.99);
INSERT INTO product (name, description, price) VALUES ("Gaming Laptop Ultra Pro", "Dominate the competition with the ultimate in portable gaming power with this top-of-the-line gaming laptop.", 2499.95);
INSERT INTO product (name, description, price) VALUES ("Smartwatch Sport", "Track your workouts and stay connected in style with this versatile and affordable smartwatch.", 129.99);
INSERT INTO product (name, description, price) VALUES ("Wireless Earbuds Premium", "Experience superior sound quality and crystal-clear calls with these premium wireless earbuds featuring active noise cancellation.", 299.90);
INSERT INTO product (name, description, price) VALUES ("Smart Bulb Color+", "Expand your color palette and create dynamic lighting effects with this advanced smart bulb that offers millions of colors and adjustable white.", 29.99);
INSERT INTO product (name, description, price) VALUES ("Portable Projector Mini+", "Enjoy brighter and sharper visuals with this upgraded mini projector for on-the-go entertainment.", 299.95);
INSERT INTO product (name, description, price) VALUES ("Fitness Tracker Band", "Track your steps, distance, and activity level with this comfortable and stylish fitness tracker band.", 39.99);
INSERT INTO product (name, description, price) VALUES ("Smartwatch GPS", "Track your runs, walks, and bike rides with built-in GPS and detailed insights with this GPS-enabled smartwatch.", 199.90);
INSERT INTO product (name, description, price) VALUES ("Gaming Mouse Macro", "Program macros and customize your gameplay with this feature-rich gaming mouse designed for MMO and RTS games.", 69.99);
INSERT INTO product (name, description, price) VALUES ("Smart Thermostat AI", "Enjoy optimal comfort and energy savings with this AI-powered smart thermostat that learns your preferences and adjusts automatically.", 249.95);
INSERT INTO product (name, description, price) VALUES ("Portable Projector Outdoor", "Enjoy movie nights under the stars with this weatherproof and portable projector for outdoor entertainment.", 399.99);




-- drop table product;
-- drop table coupon;