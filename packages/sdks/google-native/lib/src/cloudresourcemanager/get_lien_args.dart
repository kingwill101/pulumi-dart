// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v1_get_lien_args_doc}
/// Arguments for getLien.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v1_get_lien_args_doc}
class GetLienArgs {
  final pulumi.Input<String> lienId;

  /// Creates a new [GetLienArgs].
  /// [lienId] Required.
  GetLienArgs({required this.lienId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'lienId': lienId};
  }

  factory GetLienArgs.fromMap(Map<String, dynamic> map) {
    return GetLienArgs(lienId: pulumi.Input.fromValue(map['lienId'] as String));
  }
}
