// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Links relevant to the assessment
class AssessmentLinksResponse {
  /// Link to assessment in Azure Portal
  final pulumi.Input<String> azurePortalUri;

  /// Creates a new [AssessmentLinksResponse].
  /// [azurePortalUri] Link to assessment in Azure Portal
  AssessmentLinksResponse({
    required this.azurePortalUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azurePortalUri': azurePortalUri,
    };
  }

  factory AssessmentLinksResponse.fromMap(Map<String, dynamic> map) {
    return AssessmentLinksResponse(
      azurePortalUri: pulumi.Input.fromValue(map['azurePortalUri'] as String),
    );
  }
}

