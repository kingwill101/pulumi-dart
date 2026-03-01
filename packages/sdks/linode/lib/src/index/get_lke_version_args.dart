// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_lke_version_get_lke_version_args_doc}
/// Arguments for getLkeVersion.
/// {@endtemplate}
/// {@macro pulumi_index_get_lke_version_get_lke_version_args_doc}
class GetLkeVersionArgs {
  /// The unique ID of this Linode LKE Version.
  final pulumi.Input<String> id;
  /// The tier (`standard` or `enterprise`) of Linode LKE Version to fetch.
  final pulumi.Input<String>? tier;

  /// Creates a new [GetLkeVersionArgs].
  /// [id] The unique ID of this Linode LKE Version.
  /// [tier] The tier (`standard` or `enterprise`) of Linode LKE Version to fetch.
  GetLkeVersionArgs({
    required pulumi.Output<String> id,
    pulumi.Output<String>? tier,
  }) :
      id = pulumi.Input.asInput<String>(id),
      tier = pulumi.Input.asOptionalInput<String>(tier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'tier': ?tier,
    };
  }

  factory GetLkeVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetLkeVersionArgs(
      id: pulumi.Output.create<String>(map['id'] as String),
      tier: map['tier'] == null ? null : pulumi.Output.create<String>(map['tier'] as String),
    );
  }
}

