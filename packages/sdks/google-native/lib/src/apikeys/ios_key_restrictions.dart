// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The iOS apps that are allowed to use the key.
class IosKeyRestrictions {
  /// A list of bundle IDs that are allowed when making API calls with this key.
  final pulumi.Input<List<String>>? allowedBundleIds;

  /// Creates a new [IosKeyRestrictions].
  /// [allowedBundleIds] A list of bundle IDs that are allowed when making API calls with this key.
  const IosKeyRestrictions({
    this.allowedBundleIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedBundleIds': ?allowedBundleIds,
    };
  }

  factory IosKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return IosKeyRestrictions(
      allowedBundleIds: (() { final guardedValue = map['allowedBundleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

