// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pages_project_deployment_configs_preview.dart';
import 'pages_project_deployment_configs_production.dart';

class PagesProjectDeploymentConfigs {
  /// Configs for preview deploys.
  final pulumi.Input<PagesProjectDeploymentConfigsPreview?>? preview;
  /// Configs for production deploys.
  final pulumi.Input<PagesProjectDeploymentConfigsProduction?>? production;

  /// Creates a new [PagesProjectDeploymentConfigs].
  /// [preview] Configs for preview deploys.
  /// [production] Configs for production deploys.
  const PagesProjectDeploymentConfigs({
    this.preview,
    this.production,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preview': ?pulumi.Input.mapOptionalInputValue<PagesProjectDeploymentConfigsPreview, Map<String, dynamic>>(preview, (value) => value.toMap()),
      'production': ?pulumi.Input.mapOptionalInputValue<PagesProjectDeploymentConfigsProduction, Map<String, dynamic>>(production, (value) => value.toMap()),
    };
  }

  factory PagesProjectDeploymentConfigs.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigs(
      preview: (() { final guardedValue = map['preview']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectDeploymentConfigsPreview.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      production: (() { final guardedValue = map['production']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectDeploymentConfigsProduction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
