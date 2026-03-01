// ignore_for_file: unused_element, unnecessary_cast


/// Assigns input data to training, validation, and test sets based on the given filters, data pieces not matched by any filter are ignored. Currently only supported for Datasets containing DataItems. If any of the filters in this message are to match nothing, then they can be set as '-' (the minus sign). Supported only for unstructured Datasets.
class GoogleCloudAiplatformV1beta1FilterSplitResponse {
  /// A filter on DataItems of the Dataset. DataItems that match this filter are used to test the Model. A filter with same syntax as the one used in DatasetService.ListDataItems may be used. If a single DataItem is matched by more than one of the FilterSplit filters, then it is assigned to the first set that applies to it in the training, validation, test order.
  final String testFilter;
  /// A filter on DataItems of the Dataset. DataItems that match this filter are used to train the Model. A filter with same syntax as the one used in DatasetService.ListDataItems may be used. If a single DataItem is matched by more than one of the FilterSplit filters, then it is assigned to the first set that applies to it in the training, validation, test order.
  final String trainingFilter;
  /// A filter on DataItems of the Dataset. DataItems that match this filter are used to validate the Model. A filter with same syntax as the one used in DatasetService.ListDataItems may be used. If a single DataItem is matched by more than one of the FilterSplit filters, then it is assigned to the first set that applies to it in the training, validation, test order.
  final String validationFilter;

  /// Creates a new [GoogleCloudAiplatformV1beta1FilterSplitResponse].
  /// [testFilter] A filter on DataItems of the Dataset. DataItems that match this filter are used to test the Model. A filter with same syntax as the one used in DatasetService.ListDataItems may be used. If a single DataItem is matched by more than one of the FilterSplit filters, then it is assigned to the first set that applies to it in the training, validation, test order.
  /// [trainingFilter] A filter on DataItems of the Dataset. DataItems that match this filter are used to train the Model. A filter with same syntax as the one used in DatasetService.ListDataItems may be used. If a single DataItem is matched by more than one of the FilterSplit filters, then it is assigned to the first set that applies to it in the training, validation, test order.
  /// [validationFilter] A filter on DataItems of the Dataset. DataItems that match this filter are used to validate the Model. A filter with same syntax as the one used in DatasetService.ListDataItems may be used. If a single DataItem is matched by more than one of the FilterSplit filters, then it is assigned to the first set that applies to it in the training, validation, test order.
  GoogleCloudAiplatformV1beta1FilterSplitResponse({
    required this.testFilter,
    required this.trainingFilter,
    required this.validationFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testFilter': testFilter,
      'trainingFilter': trainingFilter,
      'validationFilter': validationFilter,
    };
  }

  factory GoogleCloudAiplatformV1beta1FilterSplitResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FilterSplitResponse(
      testFilter: map['testFilter'] as String,
      trainingFilter: map['trainingFilter'] as String,
      validationFilter: map['validationFilter'] as String,
    );
  }
}

