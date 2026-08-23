// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_byoip_prefix_get_byoip_prefix_args_doc}
/// Arguments for getByoipPrefix.
/// {@endtemplate}
/// {@macro pulumi_index_get_byoip_prefix_get_byoip_prefix_args_doc}
class GetByoipPrefixArgs {
  /// The UUID of the BYOIP prefix.
  final pulumi.Input<String> uuid;

  /// Creates a new [GetByoipPrefixArgs].
  /// [uuid] The UUID of the BYOIP prefix.
  const GetByoipPrefixArgs({
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory GetByoipPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetByoipPrefixArgs(
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}
