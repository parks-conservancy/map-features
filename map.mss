@land: #f8f7ed;
@water: #e0f3f8;
@coastline: #58baef;
@marsh: #ecf1de;
@beach: #eed7b4;
@park: #f3ebc4;
@managed_park: #dce8cb;
@school: #e6e2dc;

#water {
  polygon-fill: @water;

  [ftype=466] {
    polygon-fill: @marsh;
  }
}

#foreshore,
#beach {
  polygon-fill: @beach;
}

#coastline {
  line-color: @coastline;
  line-width: 0.25;

  [zoom>=12] {
    line-width: 0.75;
  }

  [zoom>=14] {
    line-width: 1.5;
  }

  //[zoom>=16] {
    //line-smooth: 0.5;
  //}
}

#offshore-boundaries {
  line-color: #6eac77;
  line-opacity: 0.5;
  line-width: 0.25;
  line-dasharray: 5, 2.5, 1, 2.5;
  line-cap: round;

  [zoom>=12] {
    line-width: 0.5;
  }
  
  [zoom>=13] {
    line-width: 0.7;
  }

  [zoom>=14] {
    line-dasharray: 10, 4, 2, 4;
    line-width: 1;
  }
  
  [zoom>=15] {
    line-dasharray: 12.5, 5, 2.5, 5;
  }

  [zoom>=16] {
    line-dasharray: 15, 6, 3, 6;
    line-width: 1.5;
  }
}

#buildings
{
  polygon-fill: #d8decf;
  
  [zoom>=16]
  {
    polygon-fill: #d0d0d0;
  }
  
  [zoom>=17]
  {
    building-fill: #d9d9d9;
    building-height: 1;
  }

  [zoom>=18]
  {
    building-height: 2;
  }

  // treat batteries separately, as they're in the ground
  [battery=true]
  {
    polygon-fill: #d8decf;
    
    [zoom>=17]
    {
      building-fill: #c9c9c9;
      building-height: 0.5;
    }
  }
}

#water-lines
{
  line-width: 0.4;
  line-color: lighten(@coastline, 10%);
  line-dasharray: 30, 5, 2, 5, 2, 5;
  line-cap: round;

  [zoom>=15]
  {
    line-width: 1;
  }
}

#trails {
  ::outline {
    line-width: 0;
    line-color: #fff;
    line-opacity: 0.75;
    line-join: miter;
    line-cap: round;
    line-simplify: 10;
    line-simplify-algorithm: visvalingam-whyatt;
    line-smooth: 1;
  }

  line-width: 0;
  line-join: miter;
  line-cap: round;

  // remove noise by simplifying to 10px
  line-simplify: 10;
  line-simplify-algorithm: visvalingam-whyatt;

  // fully smooth
  line-smooth: 1;

  line-color: #91785b;

  [zoom>=13] {
    line-width: 0.22;
  }

  [zoom>=14] {
    line-width: 0.55;
  }

  [zoom>=15] {
    ::outline {
      line-width: 3.5;
      line-simplify: 0;
      line-smooth: 0.25;
    }

    line-width: 1.75;
    line-simplify: 0;
    line-smooth: 0.25;
  }
  
  [zoom>=16] {
    ::outline {
      line-width: 2.5;
    }

    line-width: 2.5;
  }
  
  [zoom>=18] {
    ::outline {
      line-width: 3.5;
    }

    line-width: 3;
  }

  [use_type='Hiking'] {
    line-color: #58a618;  
  }

  [use_type='Multi-Use'] {
    line-color: #999999;
  }

  [use_type='Hiking and Horses'] {
    line-color: #cb724a;
  }

  [use_type='Hiking and Bikes'] {
    line-color: #008542;
  }

  [use_type='CLOSED'] {
    line-dasharray: 5,5;
    line-opacity: 0.5;
    line-cap: round;
  }
  [ada='yes'] {
	line-color: #085aa4;
  } 
}
