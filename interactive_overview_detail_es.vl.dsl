GET kibana_sample_data_flights/_search
{
  "size": 0,
  "aggs": {
    "by_day": {
      "date_histogram": {
        "field": "timestamp",
        "calendar_interval": "day"
      },
      "aggs": {
        "avg_delay": {
          "avg": {
            "field": "FlightDelayMin"
          }
        },
        "avg_distance": {
          "avg": {
            "field": "DistanceMiles"
          }
        },
        "weighted_avg_distance": {
          "weighted_avg": {
            "value": {
              "field": "DistanceMiles"
            },
            "weight": {
              "field": "FlightDelayMin"
            }
          }
        }
      }
    }
  }
}       

