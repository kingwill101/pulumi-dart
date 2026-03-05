// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HubManagedNetwork {
  /// The isolation mode of the AI Foundry Hub. Possible values are `Disabled`, `AllowOnlyApprovedOutbound`, and `AllowInternetOutbound`.
  final pulumi.Input<String>? isolationMode;

  /// Creates a new [HubManagedNetwork].
  /// [isolationMode] The isolation mode of the AI Foundry Hub. Possible values are `Disabled`, `AllowOnlyApprovedOutbound`, and `AllowInternetOutbound`.
  HubManagedNetwork({
    this.isolationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isolationMode': ?isolationMode,
    };
  }

  factory HubManagedNetwork.fromMap(Map<String, dynamic> map) {
    return HubManagedNetwork(
      isolationMode: (() { final guardedValue = map['isolationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

