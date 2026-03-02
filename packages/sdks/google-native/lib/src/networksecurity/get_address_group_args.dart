// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_address_group_args_doc}
/// Arguments for getAddressGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_address_group_args_doc}
class GetAddressGroupArgs {
  final pulumi.Input<String> addressGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAddressGroupArgs].
  /// [addressGroupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAddressGroupArgs({
    required this.addressGroupId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressGroupId': addressGroupId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAddressGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressGroupArgs(
      addressGroupId: (map['addressGroupId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

