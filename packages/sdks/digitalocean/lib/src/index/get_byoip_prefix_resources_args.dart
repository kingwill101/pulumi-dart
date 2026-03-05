// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_byoip_prefix_resources_get_byoip_prefix_resources_args_doc}
/// Arguments for getByoipPrefixResources.
/// {@endtemplate}
/// {@macro pulumi_index_get_byoip_prefix_resources_get_byoip_prefix_resources_args_doc}
class GetByoipPrefixResourcesArgs {
  /// The UUID of the BYOIP prefix to list addresses from.
  final pulumi.Input<String> byoipPrefixUuid;

  /// Creates a new [GetByoipPrefixResourcesArgs].
  /// [byoipPrefixUuid] The UUID of the BYOIP prefix to list addresses from.
  GetByoipPrefixResourcesArgs({
    required this.byoipPrefixUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'byoipPrefixUuid': byoipPrefixUuid,
    };
  }

  factory GetByoipPrefixResourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetByoipPrefixResourcesArgs(
      byoipPrefixUuid: pulumi.Input.fromValue(map['byoipPrefixUuid'] as String),
    );
  }
}

