// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nb_types_type_price.dart';
import 'get_nb_types_type_region_price.dart';

class GetNbTypesType {
  /// The unique ID assigned to this Node Balancer Type.
  final pulumi.Input<String> id;

  /// The Node Balancer Type's label.
  final pulumi.Input<String> label;

  /// Cost in US dollars, broken down into hourly and monthly charges.
  final pulumi.Input<List<GetNbTypesTypePrice>> prices;

  /// A list of region-specific prices for this Node Balancer Type.
  final pulumi.Input<List<GetNbTypesTypeRegionPrice>> regionPrices;

  /// The monthly outbound transfer amount, in MB.
  final pulumi.Input<int> transfer;

  /// Creates a new [GetNbTypesType].
  /// [id] The unique ID assigned to this Node Balancer Type.
  /// [label] The Node Balancer Type's label.
  /// [prices] Cost in US dollars, broken down into hourly and monthly charges.
  /// [regionPrices] A list of region-specific prices for this Node Balancer Type.
  /// [transfer] The monthly outbound transfer amount, in MB.
  GetNbTypesType({
    required this.id,
    required this.label,
    required this.prices,
    required this.regionPrices,
    required this.transfer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'label': label,
      'prices':
          pulumi.Input.mapInputValue<
            List<GetNbTypesTypePrice>,
            List<Map<String, dynamic>>
          >(
            prices,
            (value) =>
                pulumi.Input.encodeList<
                  GetNbTypesTypePrice,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'regionPrices':
          pulumi.Input.mapInputValue<
            List<GetNbTypesTypeRegionPrice>,
            List<Map<String, dynamic>>
          >(
            regionPrices,
            (value) =>
                pulumi.Input.encodeList<
                  GetNbTypesTypeRegionPrice,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'transfer': transfer,
    };
  }

  factory GetNbTypesType.fromMap(Map<String, dynamic> map) {
    return GetNbTypesType(
      id: pulumi.Input.fromValue(map['id'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      prices: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetNbTypesTypePrice>(
          map['prices']!,
          (value) => GetNbTypesTypePrice.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      regionPrices: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetNbTypesTypeRegionPrice>(
          map['regionPrices']!,
          (value) => GetNbTypesTypeRegionPrice.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      transfer: pulumi.Input.fromValue(map['transfer'] as int),
    );
  }
}
