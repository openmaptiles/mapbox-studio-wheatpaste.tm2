#landcover, #park{
  [class='wood'],[class='grass'],[class='nature_reserve'],
  [class='national_park'] {
    polygon-fill: #f04;
    line-color: #f04 * .8;
    comp-op: multiply;
  }
}

#landuse[class!='agriculture']{
  [class='park'],[class='wood'],[class='scrub'],
    [class='pitch'],[class='grass'] {
    polygon-fill: #f04;
    line-color: #f04 * .8;
  }
  [class='industrial'],[class='parking'],
    [class='school'],[class='hospital'] {
    polygon-fill: #df2;
    line-color: #df2 * .5;
  }
  [class='cemetery'] {
    polygon-fill: #2df;
    line-color: #2df * .8;
  }
  comp-op: multiply;
  [zoom>15] { line-width:2; }
}

#landcover[class='wetland'] { polygon-fill: #2df; comp-op:multiply; }