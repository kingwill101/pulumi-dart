// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVlansVlan {
  /// When the VLAN was created.
  final pulumi.Input<String> created;
  /// The unique label of the VLAN.
  final pulumi.Input<String> label;
  /// The running Linodes currently attached to the VLAN.
  final pulumi.Input<List<int>> linodes;
  /// The region the VLAN is located in. See all regions [here](https://api.linode.com/v4/regions).
  final pulumi.Input<String> region;

  /// Creates a new [GetVlansVlan].
  /// [created] When the VLAN was created.
  /// [label] The unique label of the VLAN.
  /// [linodes] The running Linodes currently attached to the VLAN.
  /// [region] The region the VLAN is located in. See all regions [here](https://api.linode.com/v4/regions).
  GetVlansVlan({
    required this.created,
    required this.label,
    required this.linodes,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'label': label,
      'linodes': linodes,
      'region': region,
    };
  }

  factory GetVlansVlan.fromMap(Map<String, dynamic> map) {
    return GetVlansVlan(
      created: (map['created'] as String).input(),
      label: (map['label'] as String).input(),
      linodes: ((map['linodes'] as List).cast<int>()).input(),
      region: (map['region'] as String).input(),
    );
  }
}

