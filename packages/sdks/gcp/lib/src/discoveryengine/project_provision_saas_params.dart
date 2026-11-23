// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectProvisionSaasParams {
  /// Set to `true` to specify that the caller has read and consents to the
  /// Terms for business edition quality of service.
  final pulumi.Input<bool?>? acceptBizQos;
  /// Indicates whether the current request is for Business edition (`true`)
  /// or not (`false`).
  final pulumi.Input<bool?>? isBiz;

  /// Creates a new [ProjectProvisionSaasParams].
  /// [acceptBizQos] Set to `true` to specify that the caller has read and consents to the
  /// [isBiz] Indicates whether the current request is for Business edition (`true`)
  const ProjectProvisionSaasParams({
    this.acceptBizQos,
    this.isBiz,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptBizQos': ?acceptBizQos,
      'isBiz': ?isBiz,
    };
  }

  factory ProjectProvisionSaasParams.fromMap(Map<String, dynamic> map) {
    return ProjectProvisionSaasParams(
      acceptBizQos: (() { final guardedValue = map['acceptBizQos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isBiz: (() { final guardedValue = map['isBiz']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
