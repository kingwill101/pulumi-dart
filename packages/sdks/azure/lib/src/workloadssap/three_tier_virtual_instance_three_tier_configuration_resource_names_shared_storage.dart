// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage {
  /// The full name of the Shared Storage Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accountName;
  /// The full name of Private Endpoint for the Shared Storage Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? privateEndpointName;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage].
  /// [accountName] The full name of the Shared Storage Account. Changing this forces a new resource to be created.
  /// [privateEndpointName] The full name of Private Endpoint for the Shared Storage Account. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage({
    this.accountName,
    this.privateEndpointName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'privateEndpointName': ?privateEndpointName,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesSharedStorage(
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      privateEndpointName: map['privateEndpointName'] == null ? null : (map['privateEndpointName']! as String).input(),
    );
  }
}

