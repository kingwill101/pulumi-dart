// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HciDeploymentSettingScaleUnitOptionalService {
  /// Specifies the name of custom location. A custom location will be created after the deployment is completed. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> customLocation;

  /// Creates a new [HciDeploymentSettingScaleUnitOptionalService].
  /// [customLocation] Specifies the name of custom location. A custom location will be created after the deployment is completed. Changing this forces a new Stack HCI Deployment Setting to be created.
  HciDeploymentSettingScaleUnitOptionalService({
    required this.customLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocation': customLocation,
    };
  }

  factory HciDeploymentSettingScaleUnitOptionalService.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingScaleUnitOptionalService(
      customLocation: (map['customLocation'] as String).input(),
    );
  }
}

