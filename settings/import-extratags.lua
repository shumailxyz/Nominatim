local flex = require('flex-base')

flex.set_main_tags{
    building = 'fallback',
    emergency = 'always',
    healthcare = 'fallback',
    historic = 'always',
    military = 'always',
    natural = 'named',
    highway = {'always',
               street_lamp = 'named',
               traffic_signals = 'named',
               service = 'named',
               cycleway = 'named',
               path = 'named',
               footway = 'named',
               steps = 'named',
               bridleway = 'named',
               track = 'named',
               motorway_link = 'named',
               trunk_link = 'named',
               primary_link = 'named',
               secondary_link = 'named',
               tertiary_link = 'named'},
    railway = 'named',
    man_made = {'none',
                pier = 'always',
                tower = 'always',
                bridge = 'always',
                works = 'named',
                water_tower = 'always',
                dyke = 'named',
                lighthouse = 'always',
                watermill = 'always',
                tunnel = 'always'},
    aerialway = 'always',
    boundary = {'named',
                postal_code = 'always'},
    aeroway = 'always',
    amenity = 'always',
    club = 'always',
    craft = 'always',
    junction = 'fallback',
    landuse = 'fallback',
    leisure = {'always',
               nature_reserve = 'fallback'},
    office = 'always',
    mountain_pass = 'always',
    shop = 'always',
    tourism = 'always',
    bridge = 'named_with_key',
    tunnel = 'named_with_key',
    waterway = 'named',
    place = 'always'
}

flex.set_prefilters{delete_keys = {'note', 'note:*', 'source', '*source', 'attribution',
                                   'comment', 'fixme', 'FIXME', 'created_by', 'NHD:*',
                                   'nhd:*', 'gnis:*', 'geobase:*', 'KSJ2:*', 'yh:*',
                                   'osak:*', 'naptan:*', 'CLC:*', 'import', 'it:fvg:*',
                                   'type', 'lacounty:*', 'ref:ruian:*', 'building:ruian:type',
                                   'ref:linz:*', 'is_in:postcode'},
                    delete_tags = {emergency = {'yes', 'no', 'fire_hydrant'},
                                   historic = {'yes', 'no'},
                                   military = {'yes', 'no'},
                                   natural = {'yes', 'no', 'coastline'},
                                   highway = {'no', 'turning_circle', 'mini_roundabout',
                                              'noexit', 'crossing', 'give_way', 'stop'},
                                   railway = {'level_crossing', 'no', 'rail', 'switch',
                                              'abandoned', 'signal', 'buffer_stop', 'razed'},
                                   aerialway = {'pylon', 'no'},
                                   aeroway = {'no'},
                                   amenity = {'no', 'parking_space', 'parking_entrance'},
                                   club = {'no'},
                                   craft = {'no'},
                                   leisure = {'no'},
                                   office = {'no'},
                                   mountain_pass = {'no'},
                                   shop = {'no'},
                                   tourism = {'yes', 'no'},
                                   bridge = {'no'},
                                   tunnel = {'no'},
                                   waterway = {'riverbank'},
                                   building = {'no'},
                                   boundary = {'place', 'land_area'}},
                    extra_keys = {'*:prefix', '*:suffix', 'name:prefix:*', 'name:suffix:*',
                               'name:etymology', 'name:signed', 'name:botanical',
                               'wikidata', '*:wikidata',
                               '*:wikipedia', 'brand:wikipedia:*',
                               'addr:street:name', 'addr:street:type'}
                   }

flex.set_name_tags{main = {'name', 'name:*',
                          'int_name', 'int_name:*',
                          'nat_name', 'nat_name:*',
                          'reg_name', 'reg_name:*',
                          'loc_name', 'loc_name:*',
                          'old_name', 'old_name:*',
                          'alt_name', 'alt_name:*', 'alt_name_*',
                          'official_name', 'official_name:*',
                          'place_name', 'place_name:*',
                          'short_name', 'short_name:*', 'brand'},
                   extra = {'ref', 'int_ref', 'nat_ref', 'reg_ref',
                            'loc_ref', 'old_ref',
                            'iata', 'icao', 'pcode', 'pcode:*', 'ISO3166-2'},
                   house = {'addr:housename'}
                  }

flex.set_address_tags{main = {'addr:housenumber',
                              'addr:conscriptionnumber',
                              'addr:streetnumber'},
                      extra = {'addr:*', 'is_in:*', 'tiger:county'},
                      postcode = {'postal_code', 'postcode', 'addr:postcode',
                                  'tiger:zip_left', 'tiger:zip_right'},
                      country = {'country_code', 'ISO3166-1',
                                 'addr:country_code', 'is_in:country_code',
                                 'addr:country', 'is_in:country'},
                      interpolation = {'addr:interpolation'}
                     }


flex.set_unused_handling{delete_keys = {'tiger:*'}}

return flex
