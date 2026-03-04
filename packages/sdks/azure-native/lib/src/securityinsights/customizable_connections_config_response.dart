// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The UiConfig for 'Customizable' connector definition kind.
class CustomizableConnectionsConfigResponse {
  /// Gets or sets the template name. The template includes ARM templates that can be created by the connector, usually it will be the dataConnectors ARM templates.
  final pulumi.Input<String> templateSpecName;

  /// Gets or sets the template version.
  final pulumi.Input<String> templateSpecVersion;

  /// Creates a new [CustomizableConnectionsConfigResponse].
  /// [templateSpecName] Gets or sets the template name. The template includes ARM templates that can be created by the connector, usually it will be the dataConnectors ARM templates.
  /// [templateSpecVersion] Gets or sets the template version.
  CustomizableConnectionsConfigResponse({
    required this.templateSpecName,
    required this.templateSpecVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templateSpecName': templateSpecName,
      'templateSpecVersion': templateSpecVersion,
    };
  }

  factory CustomizableConnectionsConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CustomizableConnectionsConfigResponse(
      templateSpecName: pulumi.Input.fromValue(
        map['templateSpecName'] as String,
      ),
      templateSpecVersion: pulumi.Input.fromValue(
        map['templateSpecVersion'] as String,
      ),
    );
  }
}
