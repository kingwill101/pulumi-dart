// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_project_deployment_configs_preview.dart';
import 'get_pages_project_deployment_configs_production.dart';

class GetPagesProjectDeploymentConfigs {
  /// Configs for preview deploys.
  final pulumi.Input<GetPagesProjectDeploymentConfigsPreview> preview;
  /// Configs for production deploys.
  final pulumi.Input<GetPagesProjectDeploymentConfigsProduction> production;

  /// Creates a new [GetPagesProjectDeploymentConfigs].
  /// [preview] Configs for preview deploys.
  /// [production] Configs for production deploys.
  const GetPagesProjectDeploymentConfigs({
    required this.preview,
    required this.production,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preview': pulumi.Input.mapInputValue<GetPagesProjectDeploymentConfigsPreview, Map<String, dynamic>>(preview, (value) => value.toMap()),
      'production': pulumi.Input.mapInputValue<GetPagesProjectDeploymentConfigsProduction, Map<String, dynamic>>(production, (value) => value.toMap()),
    };
  }

  factory GetPagesProjectDeploymentConfigs.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigs(
      preview: pulumi.Input.fromValue(GetPagesProjectDeploymentConfigsPreview.fromMap((map['preview']! as Map).cast<String, dynamic>())),
      production: pulumi.Input.fromValue(GetPagesProjectDeploymentConfigsProduction.fromMap((map['production']! as Map).cast<String, dynamic>())),
    );
  }
}
