// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_resource_status_cancellation_information_response.dart';

/// [Output Only] Contains output only fields.
class CommitmentResourceStatusResponse {
  /// An optional, contains all the needed information of cancellation.
  final pulumi.Input<CommitmentResourceStatusCancellationInformationResponse> cancellationInformation;

  /// Creates a new [CommitmentResourceStatusResponse].
  /// [cancellationInformation] An optional, contains all the needed information of cancellation.
  CommitmentResourceStatusResponse({
    required this.cancellationInformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cancellationInformation': pulumi.Input.mapInputValue<CommitmentResourceStatusCancellationInformationResponse, Map<String, dynamic>>(cancellationInformation, (value) => value.toMap()),
    };
  }

  factory CommitmentResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return CommitmentResourceStatusResponse(
      cancellationInformation: (CommitmentResourceStatusCancellationInformationResponse.fromMap((map['cancellationInformation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

