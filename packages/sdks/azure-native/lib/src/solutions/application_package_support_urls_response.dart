// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The appliance package support URLs.
class ApplicationPackageSupportUrlsResponse {
  /// The government cloud support URL.
  final pulumi.Input<String>? governmentCloud;
  /// The public azure support URL.
  final pulumi.Input<String>? publicAzure;

  /// Creates a new [ApplicationPackageSupportUrlsResponse].
  /// [governmentCloud] The government cloud support URL.
  /// [publicAzure] The public azure support URL.
  ApplicationPackageSupportUrlsResponse({
    this.governmentCloud,
    this.publicAzure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'governmentCloud': ?governmentCloud,
      'publicAzure': ?publicAzure,
    };
  }

  factory ApplicationPackageSupportUrlsResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationPackageSupportUrlsResponse(
      governmentCloud: (() { final guardedValue = map['governmentCloud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicAzure: (() { final guardedValue = map['publicAzure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

