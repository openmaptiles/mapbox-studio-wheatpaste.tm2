// Fonts 
@serif_bold: "Elementa Rough Pro Bold","Arial Unicode MS Regular";

@sans_bold: "Roboto Bold","Arial Unicode MS Regular";
@sans_bold_italic: "Roboto Bold Italic","Arial Unicode MS Regular";
@sans_black_italic: "Roboto Black Italic","Arial Unicode MS Regular";

// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Common Colors //
@water: #2df * .6;
@park: #f04;
@land: lighten(#edb,5); //#F8E7BE;

Map {
  background-image: url(img/land_paper.png);
}

#water {
  ::line {
    line-color: @water;
    line-width: 3;
    line-join: miter;
    [zoom>=9] { line-width: 5; }
    [zoom>=12] { line-width: 6; }
    line-comp-op: multiply;
    line-clip: false;
  }
  polygon-pattern-file:  url(img/water_paper.png);
}

#waterway {
  line-width: .5;
  line-color: @water;
  line-comp-op: multiply;
}

#building {
  ::blue {
    polygon-fill: #2df;
    [zoom>=15] { polygon-geometry-transform: translate(-1,-2); }
    [zoom>=17] { polygon-geometry-transform: translate(-2,-1); }
  }
  ::red {
    polygon-fill: #f07;
    polygon-comp-op:multiply;
    [zoom>=15] { polygon-geometry-transform: translate(1,1); }
    [zoom>=17] { polygon-geometry-transform: translate(2,2); }
  }
  ::black { polygon-fill: #000; }
}

#aeroway {
  ['mapnik::geometry_type'=2] { line-color: #000; }
  ['mapnik::geometry_type'=3] { polygon-fill: #000; }
}


// --- roads ------------------------------------
#transportation::case {
  line-color: @land;
  line-width:0;
  line-join: round;
  [brunnel='tunnel'] { opacity:.25; }
  [class='motorway'] {
    line-width: 7;
    [zoom=14] { line-width: 8; }
    [zoom=15] { line-width: 9; }
    [zoom=16] { line-width: 10; }
    [zoom=17] { line-width: 12; }
    [zoom=18] { line-width: 14; }
  }
  [class=~'trunk|primary|secondary|tertiary'][zoom>6] {
    line-width: 0;
    [zoom>8] { line-width: 6; }
    [zoom>16] { line-width: 7; }
  }
  [zoom>13][class=~'minor|service'] {
    line-width: 4; 
  }
}

#transportation::fill {
  line-color: #000;
  line-width:0;
  line-join:bevel;
  line-cap: butt;
  [class='motorway'] {
    line-width:3;
    [zoom=14] { line-width: 4; }
    [zoom=15] { line-width: 5; }
    [zoom=16] { line-width: 6; }
    [zoom=17] { line-width: 8; }
    [zoom=18] { line-width: 10; }
  }
  [class=~'trunk|primary|secondary|tertiary'][zoom>6] {
    line-width: 2;
    [zoom>16] { line-width: 3; }
  }
  [class=~'minor|service'] {
    [zoom=12] { line-width: .1; }
    [zoom=13] { line-width: .2; }
    [zoom=14] { line-width: .3; }
    [zoom>14] { line-width: .5; }
  }
}
