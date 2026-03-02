// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_lookup_group_key.dart';

/// {@template pulumi_cloudidentity_get_group_lookup_get_group_lookup_args_doc}
/// Arguments for getGroupLookup.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_get_group_lookup_get_group_lookup_args_doc}
class GetGroupLookupArgs {
  /// The EntityKey of the Group to lookup. A unique identifier for an entity in the Cloud Identity Groups API.
  /// An entity can represent either a group with an optional namespace or a user without a namespace.
  /// The combination of id and namespace must be unique; however, the same id can be used with different namespaces. Structure is documented below.
  final pulumi.Input<GetGroupLookupGroupKey> groupKey;

  /// Creates a new [GetGroupLookupArgs].
  /// [groupKey] The EntityKey of the Group to lookup. A unique identifier for an entity in the Cloud Identity Groups API.
  GetGroupLookupArgs({
    required this.groupKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupKey': pulumi.Input.mapInputValue<GetGroupLookupGroupKey, Map<String, dynamic>>(groupKey, (value) => value.toMap()),
    };
  }

  factory GetGroupLookupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupLookupArgs(
      groupKey: (GetGroupLookupGroupKey.fromMap((map['groupKey'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

