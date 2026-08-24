// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZoneDnsSettingsNameservers {
  /// Configured nameserver set to be used for this zone
  final pulumi.Input<int> nsSet;
  /// Nameserver type
  /// Available values: "cloudflare.standard", "custom.account", "custom.tenant", "custom.zone".
  final pulumi.Input<String> type;

  /// Creates a new [GetZoneDnsSettingsNameservers].
  /// [nsSet] Configured nameserver set to be used for this zone
  /// [type] Nameserver type
  const GetZoneDnsSettingsNameservers({
    required this.nsSet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nsSet': nsSet,
      'type': type,
    };
  }

  factory GetZoneDnsSettingsNameservers.fromMap(Map<String, dynamic> map) {
    return GetZoneDnsSettingsNameservers(
      nsSet: pulumi.Input.fromValue((map['nsSet'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
