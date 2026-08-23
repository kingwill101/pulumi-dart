// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_asset_resource_args_doc}
/// The set of arguments for AssetResource.
/// {@endtemplate}
/// {@macro pulumi_index_asset_resource_args_doc}
class AssetResourceArgs {
  final pulumi.Input<dynamic> value;

  /// Creates a new [AssetResourceArgs].
  /// [value] Required.
  const AssetResourceArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory AssetResourceArgs.fromMap(Map<String, dynamic> map) {
    return AssetResourceArgs(
      value: pulumi.Input.fromValue(map['value']),
    );
  }
}
