Notes (in N)
% All notes that are used in the score of the arrangement of the piece
% Is not applied to actual code but is rather just a visual for me to keep 
% track of which notes I am using.
% Syntax of actual notes are not applied to functions, 
% just the number values

DNat = 17      
EFlat = 18     
CNat = 15      
BFlat = 13 
GNat = 10 
ANat = 12 
FSharp = 9
FSharp_Low = -3
FNat = 8 
EFlat_Low = 6 
DNat_Low = 5  
DNat_Bass = -7 
ANat_Bass = -12 
ANat_Low = 0  
GNat_High = 22 
FNat_High = 20 
C_Bass = -21 
C_Low = 3 
C_Cello = -9 
EFlat_Bass = -8 
GLow = -2 
DNat_Bass = -19 
DNat_mid = 5
GBass = -14
BFlat = 1
ANat_High = 24
ENat_High = 19
Note Length
% Each length of note used in the script formed into time vectors; each 
% note 
% length made by changing the note duration and converting proportionally 
% to every other note.
% Sampling frequency fs set to 8000 Hz for more clarity
% Quarter was based at 0.5 second

quarter = [0:1/8000:(0.5-1/8000)] 
half = [0:1/8000:(1-1/8000)]      
whole = [0:1/8000:(2-1/8000)]     
eigth = [0:1/8000:(0.25-1/8000)]
sixteenth = [0:1/8000:(0.125-1/8000)]
dotted_half = [0:1/8000:(1.5-1/8000)]
half_eigth_tie = [0:1/8000:(1.25-1/8000)]
fermata = [0:1/8000:(3-1/8000)]


Measures for Melody
% Each individual measure written out in vector form
% Each measure utilizes the functions written below
% All measure vectors added up into one large melody vector.
% Right hand (melody) notes as vectors

m1 = [makeMusic(17, eigth), makeMusic(18, eigth), makeMusic(17, eigth), 
      makeMusic(18, eigth), makeMusic(17, eigth), makeMusic(18, eigth)]
m2 = [makeMusic(15, eigth), makeMusic(17, eigth), makeMusic(15, eigth), 
      makeMusic(17, eigth), makeMusic(15, eigth), makeMusic(17, eigth)]
m3 = [makeMusic(13, eigth), makeMusic(15, eigth), makeMusic(13, eigth), 
      makeMusic(15, eigth), makeMusic(13, eigth), makeMusic(15, eigth)]
m4 = [makeMusic(12, sixteenth), makeMusic(10, sixteenth), 
      makeMusic(9, half_eigth_tie)]
m5 = [makeMusic(-19, quarter), makeMusic(-12, quarter), 
      makeMusic(-7, quarter), makeMusic(0, fermata) + 
      makeMusic(5, fermata) + makeMusic(9, fermata)]
m6 = [makeMusic(-14, quarter), makeMusic(-2, quarter) + 
      makeMusic(5, quarter) + makeMusic(13, quarter), 
      makeMusic(-2, quarter) + makeMusic(5, quarter) + 
      makeMusic(13, quarter)]
m7 = [4 * makeMusic(-19, quarter), makeMusic(-2, quarter) + 
      makeMusic(5, quarter) + makeMusic(13, quarter), 
      makeMusic(-2, quarter) + makeMusic(5, quarter) + 
      makeMusic(13, quarter)]
m8 = [makeMusic(-14, quarter), makeMusic(-2, quarter) + 
      makeMusic(5, quarter) + makeMusic(13, quarter), 
      makeMusic(-2, quarter) + makeMusic(5, quarter) + 
      makeMusic(13, quarter)]
m9 = [makeMusic(5, quarter), makeMusic(10, quarter), 
      makeMusic(13, quarter)]
m10 = [makeMusic(17, half), makeMusic(17, quarter)]
m11 = [makeMusic(15, quarter), makeMusic(13, quarter), 
       makeMusic(12, quarter)]
m12 = [makeMusic(13, dotted_half)]
m13 = [makeMusic(10, quarter), makeMusic(13, quarter), 
       makeMusic(17, quarter)]
m14 = [makeMusic(22, half), makeMusic(22, quarter)]
m15 = [makeMusic(22, quarter), makeMusic(20, quarter), 
       makeMusic(18, quarter)]
m16 = [makeMusic(20, dotted_half)]
m17 = [makeMusic(12, quarter), makeMusic(17, quarter), 
       makeMusic(20, quarter)]
m18 = [makeMusic(24, half), makeMusic(22, quarter)]
m19 = [makeMusic(20, quarter), makeMusic(19, quarter), 
       makeMusic(20, quarter)]
m20 = [makeMusic(22, half), makeMusic(20, quarter)]
m21 = [makeMusic(19, half), makeMusic(17, quarter)]
m22 = [makeMusic(15, quarter), makeMusic(13, quarter), 
       makeMusic(15, quarter)]
m23 = [makeMusic(17, quarter), makeMusic(15, quarter), 
       makeMusic(10, quarter)]
m24 = [makeMusic(12, dotted_half)]
right= [m1, m2, m3, m4, m5, zeros(size(quarter)), 
    m6, m7, m8, m9, m10, m11, m12, m13, m14, m15, m16, m17, m18, 
    m19, m20, m21, m22, m23, m24] 

Measures for Left Hand (Support)
% Supporting notes of the excerpt from each measure put into vectors
% Notes were input as chords by simply adding two vector functions
% All measure vectors added up into one large supporting vector

m1 = [makeMusic(13, eigth), makeMusic(15, eigth), makeMusic(13, eigth),
    makeMusic(15, eigth), makeMusic(13, eigth), makeMusic(15, eigth)]
m2 = [makeMusic(12, eigth), makeMusic(13, eigth), makeMusic(12, eigth), 
    makeMusic(13, eigth), makeMusic(12, eigth), makeMusic(13, eigth)]
m3 = [makeMusic(10, eigth), makeMusic(12, eigth), makeMusic(10, eigth), 
    makeMusic(12, eigth), makeMusic(10, eigth), makeMusic(12, eigth)]
m4 = [makeMusic(9, sixteenth), makeMusic(6, sixteenth), 
    makeMusic(5, half_eigth_tie)]
m5 = [makeMusic(-19, quarter), makeMusic(-12, quarter), 
    makeMusic(-7, quarter), makeMusic(-3, fermata) + 
    makeMusic(0, fermata)
    + makeMusic(5, fermata) + makeMusic(9, fermata)]
m6 = [makeMusic(-14, quarter), makeMusic(-2, quarter) + 
    makeMusic(5, quarter) + makeMusic(13, quarter), 
    makeMusic(-2, quarter) + makeMusic(5, quarter) + 
    makeMusic(13, quarter)]
m7 = [4 * makeMusic(-19, quarter), makeMusic(-2, quarter) +
    makeMusic(5, quarter) + makeMusic(13, quarter), 
    makeMusic(-2, quarter) 
    + makeMusic(5, quarter) + makeMusic(13, quarter)]
m8 = [makeMusic(-14, quarter), makeMusic(-2, quarter) + 
    makeMusic(5, quarter) + makeMusic(13, quarter), 
    makeMusic(-2, quarter) + makeMusic(5, quarter) + 
    makeMusic(13, quarter)]
m9 = [makeMusic(-19, quarter), 0.25 * makeMusic(-2, quarter) + 
    0.25 * makeMusic(5, quarter) + 0.25 * makeMusic(13, quarter), 
    0.25 * makeMusic(-2, quarter) + 0.25 * makeMusic(5, quarter) + 
    0.25 * makeMusic(13, quarter)]
m10 = [makeMusic(-21, quarter), makeMusic(-2, quarter), 
    makeMusic(-2, quarter)]
m11 = [makeMusic(-7, quarter), makeMusic(0, quarter), 
    makeMusic(0, quarter)]
m12 = [makeMusic(-2, quarter), makeMusic(1, quarter), 
    makeMusic(1, quarter)]
m13 = [makeMusic(-2, quarter), makeMusic(1, quarter), 
    makeMusic(1, quarter)]
m14 = [makeMusic(-9, quarter), makeMusic(1, quarter), 
    makeMusic(1, quarter)]
m15 = [makeMusic(-4, quarter), makeMusic(1, quarter), 
    makeMusic(1, quarter)]
m16 = [makeMusic(-11, quarter), makeMusic(0, quarter), 
    makeMusic(0, quarter)]
m17 = [makeMusic(-4, quarter), makeMusic(0, quarter), 
    makeMusic(0, quarter)]
m18 = [makeMusic(-5, quarter), makeMusic(1, quarter), 
    makeMusic(1, quarter)]
m19 = [makeMusic(-12, quarter), makeMusic(-2, quarter), 
    makeMusic(-2, quarter)]
m20 = [makeMusic(-7, quarter), makeMusic(0, quarter), 
    makeMusic(0, quarter)]
m21 = [makeMusic(-9, quarter), makeMusic(0, quarter), 
    makeMusic(0, quarter)]
m22 = [makeMusic(-11, quarter), makeMusic(0, quarter), 
    makeMusic(0, quarter)]
m23 = [makeMusic(-12, quarter), makeMusic(0, quarter), 
    makeMusic(0 , quarter)]
m24 = [makeMusic(-19, quarter), makeMusic(0, quarter), 
    makeMusic(0, quarter)]
left = [m1, m2, m3, m4, m5, zeros(size(quarter)), m6, m7, m8, m9, m10, 
    m11,
    m12, m13, m14, m15, m16, m17, m18, m19, m20, m21, m22, m23, m24]
Left and Right Vector
% Entire excerpt vector labeled as 'piece'. Right and left 
% subvectors put together to create the cumulative vector to 
% display the sound of excerpt. Used the soundsc function 
% with sampling frequency of 8000 Hz

piece = right + left
soundsc(piece, 8000)
Convert to WAV file
% Simple conversion to .wav file using audiowrite() function

ynorm = piece / max(piece);
filename = 'Howls_Yoo.wav';
audiowrite(filename, ynorm, 8000)

Function for Note Creation
% Main function to create the pitch of note
% Has two inputs: N, the exponent which controls the frequency, thus
% creating the pitch; and length, the length of each note that is to be
% played using the time vectors created in previous code
% Function creates a vector applying sinusoidal waves that allow 
% people to hear pitches.
% To add the harmonic effect, the end of the function is dot 
% producted by another function: ADSR, explained below.
% Both functions combined together allow for the pitch to be created f
% or a certain length with a more clear sound

function y = makeMusic(N, length)
    top = 0.5 * cos(2*pi*(0.5 * 220*2^(N/12).*length)).*adsr(length);
    middle = 0.5 * cos(2*pi*(220*2^(N/12).*length)).*adsr(length);
    bottom = 0.5 * cos(2*pi*(2 * 220*2^(N/12).*length)).*adsr(length);
    y = top + middle + bottom;
end

ADSR Function
% ADSR Function for Attack, Decay, Sustain, Release
% Attack allows for the initial sound of note to be played. Decay is for
% note sound to diminish, sustain is for sound to stay at an amplitude,
% and release is for note to disappear. Creates a crisper and less 
% connected sound. Attacks for the first 20 percent of wave, decays 
% for next 20, sustains for next 50, and finally releases at the 
% last 10 percent, making up 100 for each note and its length

function a = adsr(notelen)
    Attack = linspace(0, 1, 0.2 * length(notelen));
    Decay = linspace(1, 0.7, 0.2 * length(notelen));
    Sustain = linspace(0.7, 0.7, 0.5 * length(notelen));
    Release = linspace(0.7, 0.2, 0.1 * length(notelen));
    a = [Attack Decay Sustain Release];
end


