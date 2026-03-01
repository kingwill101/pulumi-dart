// ignore_for_file: unused_element, unnecessary_cast


/// The debug setting.
class DeploymentStacksDebugSettingResponse {
  /// Specifies the type of information to log for debugging. The permitted values are none, requestContent, responseContent, or both requestContent and responseContent separated by a comma. The default is none. When setting this value, carefully consider the type of information that is being passed in during deployment. By logging information about the request or response, sensitive data that is retrieved through the deployment operations could potentially be exposed.
  final String? detailLevel;

  /// Creates a new [DeploymentStacksDebugSettingResponse].
  /// [detailLevel] Specifies the type of information to log for debugging. The permitted values are none, requestContent, responseContent, or both requestContent and responseContent separated by a comma. The default is none. When setting this value, carefully consider the type of information that is being passed in during deployment. By logging information about the request or response, sensitive data that is retrieved through the deployment operations could potentially be exposed.
  DeploymentStacksDebugSettingResponse({
    this.detailLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailLevel': ?detailLevel,
    };
  }

  factory DeploymentStacksDebugSettingResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksDebugSettingResponse(
      detailLevel: map['detailLevel'] == null ? null : map['detailLevel'] as String,
    );
  }
}

