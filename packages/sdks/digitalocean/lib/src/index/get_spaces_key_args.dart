// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_spaces_key_get_spaces_key_args_doc}
/// Arguments for getSpacesKey.
/// {@endtemplate}
/// {@macro pulumi_index_get_spaces_key_get_spaces_key_args_doc}
class GetSpacesKeyArgs {
  /// The Access Key ID of the Spaces key.
  final pulumi.Input<String> accessKey;

  /// Creates a new [GetSpacesKeyArgs].
  /// [accessKey] The Access Key ID of the Spaces key.
  GetSpacesKeyArgs({
    required pulumi.Output<String> accessKey,
  }) :
      accessKey = pulumi.Input.asInput<String>(accessKey);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': accessKey,
    };
  }

  factory GetSpacesKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetSpacesKeyArgs(
      accessKey: pulumi.Output.create<String>(map['accessKey'] as String),
    );
  }
}

