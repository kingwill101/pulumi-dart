// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterEnableK8sBetaApi {
  /// Enabled Kubernetes Beta APIs.
  final pulumi.Input<List<String>> enabledApis;

  /// Creates a new [GetClusterEnableK8sBetaApi].
  /// [enabledApis] Enabled Kubernetes Beta APIs.
  GetClusterEnableK8sBetaApi({
    required this.enabledApis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledApis': enabledApis,
    };
  }

  factory GetClusterEnableK8sBetaApi.fromMap(Map<String, dynamic> map) {
    return GetClusterEnableK8sBetaApi(
      enabledApis: ((map['enabledApis'] as List).cast<String>()).input(),
    );
  }
}

