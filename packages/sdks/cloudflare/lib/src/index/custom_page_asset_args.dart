// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_custom_page_asset_custom_page_asset_args_doc}
/// The set of arguments for CustomPageAsset.
/// {@endtemplate}
/// {@macro pulumi_index_custom_page_asset_custom_page_asset_args_doc}
class CustomPageAssetArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// A short description of the custom asset.
  final pulumi.Input<String> description;
  /// The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  final pulumi.Input<String> name;
  /// The URL where the asset content is fetched from.
  final pulumi.Input<String> url;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CustomPageAssetArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [description] A short description of the custom asset.
  /// [name] The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  /// [url] The URL where the asset content is fetched from.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const CustomPageAssetArgs({
    this.accountId,
    required this.description,
    required this.name,
    required this.url,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': description,
      'name': name,
      'url': url,
      'zoneId': ?zoneId,
    };
  }

  factory CustomPageAssetArgs.fromMap(Map<String, dynamic> map) {
    return CustomPageAssetArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
