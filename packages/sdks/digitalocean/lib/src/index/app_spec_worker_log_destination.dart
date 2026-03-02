// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_worker_log_destination_datadog.dart';
import 'app_spec_worker_log_destination_logtail.dart';
import 'app_spec_worker_log_destination_open_search.dart';
import 'app_spec_worker_log_destination_papertrail.dart';

class AppSpecWorkerLogDestination {
  /// Datadog configuration.
  final pulumi.Input<AppSpecWorkerLogDestinationDatadog>? datadog;
  /// Logtail configuration.
  final pulumi.Input<AppSpecWorkerLogDestinationLogtail>? logtail;
  /// Name of the log destination. Minimum length: 2. Maximum length: 42.
  final pulumi.Input<String> name;
  /// OpenSearch configuration.
  final pulumi.Input<AppSpecWorkerLogDestinationOpenSearch>? openSearch;
  /// Papertrail configuration.
  final pulumi.Input<AppSpecWorkerLogDestinationPapertrail>? papertrail;

  /// Creates a new [AppSpecWorkerLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] Name of the log destination. Minimum length: 2. Maximum length: 42.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  AppSpecWorkerLogDestination({
    this.datadog,
    this.logtail,
    required this.name,
    this.openSearch,
    this.papertrail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadog': ?pulumi.Input.mapOptionalInputValue<AppSpecWorkerLogDestinationDatadog, Map<String, dynamic>>(datadog, (value) => value.toMap()),
      'logtail': ?pulumi.Input.mapOptionalInputValue<AppSpecWorkerLogDestinationLogtail, Map<String, dynamic>>(logtail, (value) => value.toMap()),
      'name': name,
      'openSearch': ?pulumi.Input.mapOptionalInputValue<AppSpecWorkerLogDestinationOpenSearch, Map<String, dynamic>>(openSearch, (value) => value.toMap()),
      'papertrail': ?pulumi.Input.mapOptionalInputValue<AppSpecWorkerLogDestinationPapertrail, Map<String, dynamic>>(papertrail, (value) => value.toMap()),
    };
  }

  factory AppSpecWorkerLogDestination.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerLogDestination(
      datadog: map['datadog'] == null ? null : (AppSpecWorkerLogDestinationDatadog.fromMap((map['datadog']! as Map).cast<String, dynamic>())).input(),
      logtail: map['logtail'] == null ? null : (AppSpecWorkerLogDestinationLogtail.fromMap((map['logtail']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      openSearch: map['openSearch'] == null ? null : (AppSpecWorkerLogDestinationOpenSearch.fromMap((map['openSearch']! as Map).cast<String, dynamic>())).input(),
      papertrail: map['papertrail'] == null ? null : (AppSpecWorkerLogDestinationPapertrail.fromMap((map['papertrail']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

