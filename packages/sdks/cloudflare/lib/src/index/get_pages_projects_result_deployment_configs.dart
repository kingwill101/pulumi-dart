// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_projects_result_deployment_configs_preview.dart';
import 'get_pages_projects_result_deployment_configs_production.dart';

class GetPagesProjectsResultDeploymentConfigs {
  /// Configs for preview deploys.
  final pulumi.Input<GetPagesProjectsResultDeploymentConfigsPreview> preview;
  /// Configs for production deploys.
  final pulumi.Input<GetPagesProjectsResultDeploymentConfigsProduction> production;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigs].
  /// [preview] Configs for preview deploys.
  /// [production] Configs for production deploys.
  const GetPagesProjectsResultDeploymentConfigs({
    required this.preview,
    required this.production,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preview': pulumi.Input.mapInputValue<GetPagesProjectsResultDeploymentConfigsPreview, Map<String, dynamic>>(preview, (value) => value.toMap()),
      'production': pulumi.Input.mapInputValue<GetPagesProjectsResultDeploymentConfigsProduction, Map<String, dynamic>>(production, (value) => value.toMap()),
    };
  }

  factory GetPagesProjectsResultDeploymentConfigs.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigs(
      preview: pulumi.Input.fromValue(GetPagesProjectsResultDeploymentConfigsPreview.fromMap((map['preview']! as Map).cast<String, dynamic>())),
      production: pulumi.Input.fromValue(GetPagesProjectsResultDeploymentConfigsProduction.fromMap((map['production']! as Map).cast<String, dynamic>())),
    );
  }
}
