// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'curation_endpoint_application_integration_endpoint_details.dart';

class CurationEndpoint {
  /// The details of the Application Integration endpoint to be triggered for
  /// curation.
  /// Structure is documented below.
  final pulumi.Input<CurationEndpointApplicationIntegrationEndpointDetails>
  applicationIntegrationEndpointDetails;

  /// Creates a new [CurationEndpoint].
  /// [applicationIntegrationEndpointDetails] The details of the Application Integration endpoint to be triggered for
  CurationEndpoint({required this.applicationIntegrationEndpointDetails});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationIntegrationEndpointDetails':
          pulumi.Input.mapInputValue<
            CurationEndpointApplicationIntegrationEndpointDetails,
            Map<String, dynamic>
          >(applicationIntegrationEndpointDetails, (value) => value.toMap()),
    };
  }

  factory CurationEndpoint.fromMap(Map<String, dynamic> map) {
    return CurationEndpoint(
      applicationIntegrationEndpointDetails: pulumi.Input.fromValue(
        CurationEndpointApplicationIntegrationEndpointDetails.fromMap(
          (map['applicationIntegrationEndpointDetails']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
    );
  }
}
