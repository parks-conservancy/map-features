@controlled_access: #fc9e36;
@controlled_access_stroke: #996666;

@highway: #fee273;
@highway_stroke: #cfa18f;

@arterial: #fff;
@arterial_stroke: #cfd0d2;

@minor_arterial_low_zoom: #cfc7bb;
@minor_arterial: #fff;
@minor_arterial_stroke: #cfd0d2;

@local_road_low_zoom: #e8e8e3;
@local_road_medium_zoom: #dfdfdd;
@local_road: #edede6;
@local_road_high_zoom: #fff;
@local_road_stroke: #cfd0d2;

@runway: #efeee9;

.road
{
  ::stroke {
    line-color: transparent;
    line-width: 0;
    line-join: miter;
    line-cap: round;
  }

  line-color: transparent;
  line-width: 0;
  line-join: miter;
  line-cap: round;
  
  /* controlled access highways */
  [highway='motorway'],
  {
    ::stroke {
      line-color: @controlled_access_stroke;
      line-width: 0;

      [zoom>=6] {
        line-width: 1;
      }

      [zoom>=8] {
        line-width: 3;
      }

      [zoom>=11] {
        line-width: 4;
      }

      [zoom>=13] {
        line-width: 5;
      }

      [zoom>=14] {
        [tunnel='yes'] {
          line-opacity: 0.3;
        }
      }

      [zoom>=15] {
        line-width: 10;
      }

      [zoom>=16] {
        line-width: 12;
      }

      [zoom>=17] {
        line-width: 13;
      }
    }
    
    line-color: @controlled_access;
    line-width: 0;

    [zoom>=6] {
      line-width: 0.5;
    }

    [zoom>=8] {
      line-width: 1.5;
    }

    [zoom>=11] {
      line-width: 2.5;
    }

    [zoom>=13] {
        line-width: 3.5;
    }

    [zoom>=14] {
      [tunnel='yes'] {
        line-opacity: 0.2;
      }
    }

    [zoom>=15] {
      line-width: 8.5;
    }

    [zoom>=16] {
      line-width: 10.5;
    }

    [zoom>=17] {
      line-width: 11.5;
    }

    [bridge='yes'] {
      bridge-left/line-color: @highway_stroke;
      bridge-right/line-color: @highway_stroke;
      bridge-left/line-width: 0;
      bridge-right/line-width: 0;

      [zoom>=14] {
        bridge-left/line-width: 0.75;
        bridge-right/line-width: 0.75;

        bridge-left/line-offset: 1.75;
        bridge-right/line-offset: -1.75;
      }

      [zoom>=15] {
        bridge-left/line-offset: 3.25;
        bridge-right/line-offset: -3.25;
      }

      [zoom>=16] {
        bridge-left/line-offset: 5.75;
        bridge-right/line-offset: -5.75;
      }

      [zoom>=17] {
        bridge-left/line-offset: 6.25;
        bridge-right/line-offset: -6.25;
      }
    }
  }

  //
  // highway on/off ramps
  //
  [highway='motorway_link'],
  {
    ::stroke {
      line-color: mix(@highway_stroke, @controlled_access_stroke, 50);
      line-width: 2.5;

      [zoom>=14] {
        [tunnel='yes'] {
          line-opacity: 0.3;
        }

        line-color: @highway_stroke;
      }

      [zoom>=15] {
        line-width: 4;
      }

      [zoom>=16] {
        line-width: 5;
      }

      [zoom>=17] {
        line-width: 8;
      }
    }

    line-color: mix(@highway, @controlled_access, 50);
    line-width: 2;

    [zoom>=14] {
      [tunnel='yes'] {
        line-opacity: 0.2;
      }

      line-color: @highway;
    }

    [zoom>=15] {
      line-width: 3.5;
    }

    [zoom>=16] {
      line-width: 4.5;
    }

    [zoom>=17] {
      line-width: 7.5;
    }

    [bridge='yes'] {
      bridge-left/line-color: @highway_stroke;
      bridge-right/line-color: @highway_stroke;
      bridge-left/line-width: 0;
      bridge-right/line-width: 0;

      [zoom>=14] {
        bridge-left/line-width: 0.25;
        bridge-right/line-width: 0.25;

        bridge-left/line-offset: 1;
        bridge-right/line-offset: -1;
      }

      [zoom>=15] {
        bridge-left/line-offset: 1.75;
        bridge-right/line-offset: -1.75;
      }

      [zoom>=16] {
        bridge-left/line-offset: 2.25;
        bridge-right/line-offset: -2.25;
      }

      [zoom>=17] {
        bridge-left/line-offset: 3.75;
        bridge-right/line-offset: -3.75;
      }
    }
  }

  /* trunk highways */
  [highway='trunk'],
  {
    ::stroke {
      line-color: @highway_stroke;
      line-width: 0;

      [zoom>=8] {
        line-width: 1;
      }

      [zoom>=9] {
        line-width: 2;
      }

      [zoom>=10] {
        line-width: 3;
      }

      [zoom>=12] {
        line-width: 4;
      }

      [zoom>=13] {
        line-width: 5;
      }

      [zoom>=14] {
        [tunnel='yes'] {
          line-opacity: 0.3;
        }
      }

      [zoom>=15] {
        line-width: 12;
      }

      [zoom>=16] {
        line-width: 15;
      }

      [zoom>=17] {
        line-width: 20;
      }
    }
    
    line-color: @highway;
    line-width: 0;

    [zoom>=6] {
      line-width: 0.5;
    }

    [zoom>=7] {
      line-width: 1;
    }

    [zoom>=8] {
      /* color changes */
    }

    [zoom>=10] {
      line-width: 1.5;
    }

    [zoom>=12] {
      line-width: 2;
    }

    [zoom>=13] {
      line-width: 3.5;
    }

    [zoom>=14] {
      [tunnel='yes'] {
        line-opacity: 0.2;
      }
    }

    [zoom>=15] {
      line-width: 10.5;
    }

    [zoom>=16] {
      line-width: 13.5;
    }

    [zoom>=17] {
      line-width: 17;
    }

    [bridge='yes'] {
      bridge-left/line-color: @highway_stroke;
      bridge-right/line-color: @highway_stroke;
      bridge-left/line-width: 0;
      bridge-right/line-width: 0;

      [zoom>=14] {
        bridge-left/line-width: 0.75;
        bridge-right/line-width: 0.75;

        bridge-left/line-offset: 2.25;
        bridge-right/line-offset: -2.25;
      }

      [zoom>=15] {
        bridge-left/line-offset: 5.75;
        bridge-right/line-offset: -5.75;
      }

      [zoom>=16] {
        bridge-left/line-offset: 7.25;
        bridge-right/line-offset: -7.25;
      }

      [zoom>=17] {
        bridge-left/line-width: 1.5;
        bridge-right/line-width: 1.5;

        bridge-left/line-offset: 9.5;
        bridge-right/line-offset: -9.5;
      }
    }
  }

  //
  // trunk links
  //
  [highway='trunk_link'],
  {
    ::stroke {
      line-color: @highway_stroke;
      line-width: 0;

      [zoom>=14] {
        [tunnel='yes'] {
          line-opacity: 0.3;
        }

        line-width: 3;
      }

      [zoom>=15] {
        line-width: 4;
      }

      [zoom>=16] {
        line-width: 5;
      }

      [zoom>=17] {
        line-width: 8;
      }
    }

    line-color: @highway;
    line-width: 0;

    [zoom>=14] {
      [tunnel='yes'] {
        line-opacity: 0.2;
      }

      line-width: 2.5;
    }

    [zoom>=15] {
      line-width: 3.5;
    }

    [zoom>=16] {
      line-width: 4.5;
    }

    [zoom>=17] {
      line-width: 7.5;
    }

    [bridge='yes'] {
      bridge-left/line-color: @highway_stroke;
      bridge-right/line-color: @highway_stroke;
      bridge-left/line-width: 0;
      bridge-right/line-width: 0;

      [zoom>=14] {
        bridge-left/line-width: 0.25;
        bridge-right/line-width: 0.25;

        bridge-left/line-offset: 1.25;
        bridge-right/line-offset: -1.25;
      }

      [zoom>=15] {
        bridge-left/line-offset: 1.75;
        bridge-right/line-offset: -1.75;
      }

      [zoom>=16] {
        bridge-left/line-offset: 2.25;
        bridge-right/line-offset: -2.25;
      }

      [zoom>=17] {
        bridge-left/line-offset: 3.75;
        bridge-right/line-offset: -3.75;
      }
    }
  }

  /* major arterial */
  [highway='primary'],
  {
    ::stroke {
      line-color: @arterial_stroke;
      line-width: 0;

      [zoom>=9] {
        line-width: 2;
      }

      [zoom>=11] {
        line-width: 3;
      }

      [zoom>=12] {
        line-width: 3.5;
      }

      [zoom>=14] {
        [tunnel='yes'] {
          line-opacity: 0.3;
        }

        line-width: 4.5;
      }

      [zoom>=15] {
        line-width: 8;
      }

      [zoom>=16] {
        line-width: 12;
      }

      [zoom>=17] {
        line-width: 15;
      }
    }
    
    line-color: @arterial;
    line-width: 0;

    [zoom>=9] {
      line-width: 1;
    }

    [zoom>=11] {
      line-width: 1.5;
    }

    [zoom>=12] {
      line-width: 2;
    }

    [zoom>=14] {
      [tunnel='yes'] {
        line-opacity: 0.2;
      }

      line-width: 3;
    }

    [zoom>=15] {
      line-width: 6.5;
    }

    [zoom>=16] {
      line-width: 10.5;
    }

    [zoom>=17] {
      line-width: 13.5;
    }

    [bridge='yes'] {
      bridge-left/line-color: @arterial_stroke;
      bridge-right/line-color: @arterial_stroke;
      bridge-left/line-width: 0;
      bridge-right/line-width: 0;

      [zoom>=14] {
        bridge-left/line-width: 0.75;
        bridge-right/line-width: 0.75;

        bridge-left/line-offset: 2;
        bridge-right/line-offset: -2;
      }

      [zoom>=15] {
        bridge-left/line-offset: 3.75;
        bridge-right/line-offset: -3.75;
      }

      [zoom>=16] {
        bridge-left/line-offset: 5.75;
        bridge-right/line-offset: -5.75;
      }

      [zoom>=17] {
        bridge-left/line-offset: 7.25;
        bridge-right/line-offset: -7.25;
      }
    }
  }

  [highway='primary_link'],
  [highway='secondary_link'],
  [highway='tertiary_link'],
  {
    ::stroke {
      line-color: @arterial_stroke;
      line-width: 0;

      [zoom>=14] {
        [tunnel='yes'] {
          line-opacity: 0.3;
        }

        line-width: 4;
      }

      [zoom>=15] {
        line-width: 5;
      }

      [zoom>=16] {
        line-width: 6;
      }

      [zoom>=17] {
        line-width: 8;
      }
    }

    line-color: @arterial;
    line-width: 0;

    [zoom>=14] {
      [tunnel='yes'] {
        line-opacity: 0.2;
      }

      line-width: 2.5;
    }

    [zoom>=15] {
      line-width: 3.5;
    }

    [zoom>=16] {
      line-width: 4.5;
    }

    [zoom>=17] {
      line-width: 7.5;
    }

    [bridge='yes'] {
      bridge-left/line-color: @minor_arterial_stroke;
      bridge-right/line-color: @minor_arterial_stroke;
      bridge-left/line-width: 0;
      bridge-right/line-width: 0;

      [zoom>=14] {
        bridge-left/line-width: 0.75;
        bridge-right/line-width: 0.75;

        bridge-left/line-offset: 1.75;
        bridge-right/line-offset: -1.75;
      }

      [zoom>=15] {
        bridge-left/line-offset: 2.25;
        bridge-right/line-offset: -2.25;
      }

      [zoom>=16] {
        bridge-left/line-offset: 2.75;
        bridge-right/line-offset: -2.75;
      }

      [zoom>=17] {
        bridge-left/line-offset: 3.75;
        bridge-right/line-offset: -3.75;
      }
    }
  }

  //
  // minor arterials
  //
  [highway='secondary'],
  [highway='tertiary'],
  {
    ::stroke {
      line-color: @minor_arterial_stroke;
      line-width: 0;

      [zoom>=12] {
        line-width: 2.5;
      }

      [zoom>=14] {
        [tunnel='yes'] {
          line-opacity: 0.3;
        }

        line-width: 4;
      }

      [zoom>=15] {
        line-width: 7;
      }

      [zoom>=16] {
        line-width: 11;
      }

      [zoom>=17] {
        line-width: 14;
      }
    }
      
    line-color: @minor_arterial_low_zoom;
    line-width: 0;

    [zoom>=10] {
      line-width: 0.75;
    }

    [zoom>=12] {
      line-color: @minor_arterial;
      line-width: 1.5;
    }

    [zoom>=14] {
      [tunnel='yes'] {
        line-opacity: 0.2;
      }

      line-width: 2.5;
    }

    [zoom>=15] {
      line-width: 5.5;
    }

    [zoom>=16] {
      line-width: 9.5;
    }

    [zoom>=17] {
      line-color: #fff;
      line-width: 12.5;
    }

    [bridge='yes'] {
      bridge-left/line-color:  @minor_arterial_stroke;
      bridge-right/line-color: @minor_arterial_stroke;
      bridge-left/line-width: 0;
      bridge-right/line-width: 0;

      [zoom>=14] {
        bridge-left/line-width: 0.75;
        bridge-right/line-width: 0.75;

        bridge-left/line-offset: 1.75;
        bridge-right/line-offset: -1.75;
      }

      [zoom>=15] {
        bridge-left/line-offset: 3.25;
        bridge-right/line-offset: -3.25;
      }

      [zoom>=16] {
        bridge-left/line-offset: 5.25;
        bridge-right/line-offset: -5.25;
      }

      [zoom>=17] {
        bridge-left/line-offset: 6.75;
        bridge-right/line-offset: -6.75;
      }
    }
  }

  //
  // local roads
  //
  [highway='residential'],
  [highway='residential_link'],
  [highway='service'],
  [highway='unclassified'],
  [highway='road'],
  {
    ::stroke {
      line-color: @local_road_stroke;
      line-width: 0;

      /*
      [zoom>=17] {
        [tunnel='yes'] {
          line-opacity: 0.3;
        }

        line-width: 12;
        line-opacity: 0.8;
      }
      */
      
      [zoom>=15] {
        [tunnel='yes'] {
          line-opacity: 0.3;
        }

        line-width: 5;
        line-opacity: 0.8;
      }

      [zoom>=16] {
        line-width: 8;
      }

      [zoom>=17] {
        line-width: 12;
      }
      
    }
      
    line-color: @local_road_low_zoom;
    line-width: 0;

    [zoom>=11] {
      line-width: 0.5;
    }

    [zoom>=13] {
      line-color: @local_road_medium_zoom;
    }

    [zoom>=14] {
      line-width: 1;
    }

    [zoom>=15] {
      [tunnel='yes'] {
        line-opacity: 0.2;
      }

      line-width: 3.5;
      line-color: @local_road;
    }

    [zoom>=16] {
      line-width: 6.5;
    }

    [zoom>=17] {
      line-width: 10.5;
      line-color: @local_road_high_zoom;
    }

    [bridge='yes'] {
      bridge-left/line-color: @local_road_stroke;
      bridge-right/line-color: @local_road_stroke;
      bridge-left/line-width: 0;
      bridge-right/line-width: 0;

      [zoom>=15] {
        bridge-left/line-width: 0.75;
        bridge-right/line-width: 0.75;

        bridge-left/line-offset: 2;
        bridge-right/line-offset: -2;
      }

      [zoom>=16] {
        bridge-left/line-offset: 3.75;
        bridge-right/line-offset: -3.75;
      }

      [zoom>=17] {
        bridge-left/line-offset: 5.75;
        bridge-right/line-offset: -5.75;
      }
    }
  }

  [aeroway='runway'] {
    line-color: @runway;

    [zoom>=11] {
      line-width: 0.75;
    }

    [zoom>=12] {
      line-width: 1.5;
    }

    [zoom>=13] {
      line-width: 3;
    }

    [zoom>=14] {
      line-width: 8;
    }

    [zoom>=15] {
      line-width: 16;
    }

    [zoom>=16] {
      line-width: 32;
    }

    [zoom>=17] {
      line-width: 64;
    }

    [zoom>=18] {
      line-width: 128;
    }

    [zoom>=18] {
      line-width: 256;
    }
  }

  [aeroway='taxiway'] {
    line-color: @runway;

    [zoom>=11] {
      line-width: 0.25;
    }

    [zoom>=12] {
      line-width: 0.75;
    }

    [zoom>=13] {
      line-width: 1.5;
    }

    [zoom>=14] {
      line-width: 3;
    }

    [zoom>=15] {
      line-width: 4;
    }

    [zoom>=16] {
      line-width: 8;
    }

    [zoom>=17] {
      line-width: 20;
    }

    [zoom>=18] {
      line-width: 40;
    }

    [zoom>=19] {
      line-width: 80;
    }
  }
}

#ferry
{
  line-join: miter;
  line-cap: round;
  line-width: 0;
  line-color: @coastline;

  [zoom>=11] {
    line-color: #8ed1f3;
    line-dasharray: 6, 1.5;
    line-width: 0.5;
  }

  [zoom>=12] {
    line-dasharray: 8, 2;
    line-width: 0.75;
  }
  
  [zoom>=13] {
    line-color: #81cbf2;
    line-dasharray: 13, 4;
    line-width: 1.3;
  }

  [zoom>=14] {
    line-dasharray: 13, 4;
  }
  
  [zoom>=15] {
    line-dasharray: 14, 5;
    line-width: 1.8;
  }

  [zoom>=16] {
    line-dasharray: 16, 5;
    line-width: 2;
  }
}
