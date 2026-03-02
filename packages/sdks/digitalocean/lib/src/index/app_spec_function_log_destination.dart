// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_function_log_destination_datadog.dart';
import 'app_spec_function_log_destination_logtail.dart';
import 'app_spec_function_log_destination_open_search.dart';
import 'app_spec_function_log_destination_papertrail.dart';

class AppSpecFunctionLogDestination {
  /// Datadog configuration.
  final pulumi.Input<AppSpecFunctionLogDestinationDatadog>? datadog;
  /// Logtail configuration.
  final pulumi.Input<AppSpecFunctionLogDestinationLogtail>? logtail;
  /// Name of the log destination. Minimum length: 2. Maximum length: 42.
  final pulumi.Input<String> name;
  /// OpenSearch configuration.
  final pulumi.Input<AppSpecFunctionLogDestinationOpenSearch>? openSearch;
  /// Papertrail configuration.
  final pulumi.Input<AppSpecFunctionLogDestinationPapertrail>? papertrail;

  /// Creates a new [AppSpecFunctionLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] Name of the log destination. Minimum length: 2. Maximum length: 42.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  AppSpecFunctionLogDestination({
    this.datadog,
    this.logtail,
    required this.name,
    this.openSearch,
    this.papertrail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadog': ?pulumi.Input.mapOptionalInputValue<AppSpecFunctionLogDestinationDatadog, Map<String, dynamic>>(datadog, (value) => value.toMap()),
      'logtail': ?pulumi.Input.mapOptionalInputValue<AppSpecFunctionLogDestinationLogtail, Map<String, dynamic>>(logtail, (value) => value.toMap()),
      'name': name,
      'openSearch': ?pulumi.Input.mapOptionalInputValue<AppSpecFunctionLogDestinationOpenSearch, Map<String, dynamic>>(openSearch, (value) => value.toMap()),
      'papertrail': ?pulumi.Input.mapOptionalInputValue<AppSpecFunctionLogDestinationPapertrail, Map<String, dynamic>>(papertrail, (value) => value.toMap()),
    };
  }

  factory AppSpecFunctionLogDestination.fromMap(Map<String, dynamic> map) {
    return AppSpecFunctionLogDestination(
      datadog: map['datadog'] == null ? null : (AppSpecFunctionLogDestinationDatadog.fromMap((map['datadog']! as Map).cast<String, dynamic>())).input(),
      logtail: map['logtail'] == null ? null : (AppSpecFunctionLogDestinationLogtail.fromMap((map['logtail']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      openSearch: map['openSearch'] == null ? null : (AppSpecFunctionLogDestinationOpenSearch.fromMap((map['openSearch']! as Map).cast<String, dynamic>())).input(),
      papertrail: map['papertrail'] == null ? null : (AppSpecFunctionLogDestinationPapertrail.fromMap((map['papertrail']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

