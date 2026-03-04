// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_reference_response.dart';

class DatasetAccessEntryResponse {
  /// [Required] The dataset this entry applies to.
  final pulumi.Input<DatasetReferenceResponse> dataset;
  final pulumi.Input<List<String>> targetTypes;

  /// Creates a new [DatasetAccessEntryResponse].
  /// [dataset] [Required] The dataset this entry applies to.
  /// [targetTypes] Required.
  DatasetAccessEntryResponse({
    required this.dataset,
    required this.targetTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset':
          pulumi.Input.mapInputValue<
            DatasetReferenceResponse,
            Map<String, dynamic>
          >(dataset, (value) => value.toMap()),
      'targetTypes': targetTypes,
    };
  }

  factory DatasetAccessEntryResponse.fromMap(Map<String, dynamic> map) {
    return DatasetAccessEntryResponse(
      dataset: pulumi.Input.fromValue(
        DatasetReferenceResponse.fromMap(
          (map['dataset']! as Map).cast<String, dynamic>(),
        ),
      ),
      targetTypes: pulumi.Input.fromValue(
        (map['targetTypes'] as List).cast<String>(),
      ),
    );
  }
}
