
// --- admin labels ------------------------------

#place[class='country'] {
  text-name: @name;
  text-face-name: @serif_bold;
  text-fill: #000;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-wrap-width: 80;
  text-orientation: 6;
  text-transform: lowercase;
  text-character-spacing: -1;
  text-line-spacing:-10;
  [scalerank<=1] { text-size: 28; }
  [scalerank=2] { text-size: 20; }
  [scalerank=3] { text-size: 18; }
  [scalerank>=4] { text-size: 13; }
  [zoom>=4] {
    [scalerank<=1] { text-size: 36; }
    [scalerank=2] { text-size: 28; }
    [scalerank=3] { text-size: 22; }
    [scalerank>=4] { text-size: 17; }
  }
}

// --- places ------------------------------------
#place[class='city']{
  text-name: @name;
  text-face-name: @sans_bold;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-size: 20;
  text-transform:lowercase;
  [rank<=2] {
    text-size: 24;
    text-face-name: @sans_black_italic;
    [zoom>=6] { text-orientation: 8; }
    [zoom>=8]  { text-size: 28; }
    [zoom>=10]  { text-size: 32; }
    [zoom>=14]  { text-size: 36; }
  }
  [rank=3] {
    [zoom>=8] {
      text-size: 22;
      text-orientation: 8;
      text-face-name: @sans_black_italic;
    }
    [zoom>=10]  { text-size: 24; }
    [zoom>=14]  { text-size: 26; }
  }
  [rank>=4][zoom>10] {
    text-size: 20;
    text-orientation: 6;
    text-face-name: @sans_bold_italic;
  }
}

#place[class='town'][rank<=1][zoom>8],
#place[class='town'][rank<=3][zoom>=11] {
  text-name: @name;
  text-face-name: @sans_black_italic;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-size: 16;
  text-wrap-width: 80;
  text-transform:lowercase;
  [zoom>=12] { text-size: 20; }
  [zoom>=13] { text-orientation: 4; }
  [zoom>=14] { text-size: 24; }
  }

#place[zoom>=11][class='hamlet'],
#place[zoom>=12][class='suburb'],
#place[zoom>=13][class='neighbourhood'],
#place[zoom>=13][class='village'] {
  text-name: @name;
  text-face-name: @sans_bold;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-size: 14;
  text-line-spacing:-2;
  text-wrap-width: 50;
  text-transform:lowercase;
  [zoom>=14][type='neighbourhood'],
  [zoom>=14][type='village'] {
    text-size: 18;
    text-orientation: 5;
  }
}

// --- pois ------------------------------------
#poi[rank=1][zoom>=14],
#poi[rank=2][zoom>=16],
#poi[rank=3][zoom>=17] {
  // --- dots ---------
  marker-width: 8;
  marker-fill: #000;
  marker-line-color: @land;
  marker-line-width: 3;
  // --- text ---------
  text-name: @name;
  text-face-name: @serif_bold;
  text-size: 14;
  text-halo-fill: @land;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-avoid-edges: true;
  text-transform: lowercase;
  text-wrap-width: 80;
  text-placement-type: simple;
  text-line-spacing: -8;
  text-placements: NE,SE,NW,SW;
  text-dx: 5;
  text-dx: -5;
}