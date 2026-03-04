// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to a shared dataset. It is an existing BigQuery dataset with a collection of objects such as tables and views that you want to share with subscribers. When subscriber's subscribe to a listing, Analytics Hub creates a linked dataset in the subscriber's project. A Linked dataset is an opaque, read-only BigQuery dataset that serves as a _symbolic link_ to a shared dataset.
class BigQueryDatasetSourceResponse {
  /// Resource name of the dataset source for this listing. e.g. `projects/myproject/datasets/123`
  final pulumi.Input<String> dataset;

  /// Creates a new [BigQueryDatasetSourceResponse].
  /// [dataset] Resource name of the dataset source for this listing. e.g. `projects/myproject/datasets/123`
  BigQueryDatasetSourceResponse({required this.dataset});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dataset': dataset};
  }

  factory BigQueryDatasetSourceResponse.fromMap(Map<String, dynamic> map) {
    return BigQueryDatasetSourceResponse(
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
    );
  }
}
