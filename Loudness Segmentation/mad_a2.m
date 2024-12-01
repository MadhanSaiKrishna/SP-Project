[a2,fs_a2] = audioread("audios\2.wav");
La2 = length(a2);

a2_he = a2(22139:32033);
a2_always = a2(32033:64963);
a2_manages = a2(68624:95526);
a2_to = a2(111074:116050);
a2_find = a2(116050:133677);
a2_the = a2(133677:141175);
a2_best = a2(141175:164250);
a2_deals = a2(164250:186000);

%RMS values

a2_he_rms = sqrt(mean(a2_he.^2));
a2_always_rms = sqrt(mean(a2_always.^2));
a2_manages_rms = sqrt(mean(a2_manages).^2);
a2_to_rms = sqrt(mean(a2_to).^2);
a2_find_rms = sqrt(mean(a2_find).^2);
a2_the_rms = sqrt(mean(a2_the).^2);
a2_best_rms = sqrt(mean(a2_best).^2);
a2_deals_rms = sqrt(mean(a2_deals).^2);

