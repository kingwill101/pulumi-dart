// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigOrgConfigLocation {
  /// The ID for the folder within an organization to scan
  final pulumi.Input<String>? folderId;
  /// The ID of an organization to scan
  final pulumi.Input<String>? organizationId;

  /// Creates a new [PreventionDiscoveryConfigOrgConfigLocation].
  /// [folderId] The ID for the folder within an organization to scan
  /// [organizationId] The ID of an organization to scan
  PreventionDiscoveryConfigOrgConfigLocation({
    this.folderId,
    this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderId': ?folderId,
      'organizationId': ?organizationId,
    };
  }

  factory PreventionDiscoveryConfigOrgConfigLocation.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigOrgConfigLocation(
      folderId: (() { final guardedValue = map['folderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

