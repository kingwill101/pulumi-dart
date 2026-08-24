// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomPageAsset resources.
class CustomPageAssetState {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// A short description of the custom asset.
  final pulumi.Input<String?>? description;
  final pulumi.Input<String?>? lastUpdated;
  /// The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  final pulumi.Input<String?>? name;
  /// The size of the asset content in bytes.
  final pulumi.Input<int?>? sizeBytes;
  /// The URL where the asset content is fetched from.
  final pulumi.Input<String?>? url;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CustomPageAssetState].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [description] A short description of the custom asset.
  /// [lastUpdated] Optional.
  /// [name] The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  /// [sizeBytes] The size of the asset content in bytes.
  /// [url] The URL where the asset content is fetched from.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const CustomPageAssetState({
    this.accountId,
    this.description,
    this.lastUpdated,
    this.name,
    this.sizeBytes,
    this.url,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'lastUpdated': ?lastUpdated,
      'name': ?name,
      'sizeBytes': ?sizeBytes,
      'url': ?url,
      'zoneId': ?zoneId,
    };
  }

  factory CustomPageAssetState.fromMap(Map<String, dynamic> map) {
    return CustomPageAssetState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeBytes: (() { final guardedValue = map['sizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
