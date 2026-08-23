// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_function_log_destination_datadog.dart';
import 'get_app_spec_function_log_destination_logtail.dart';
import 'get_app_spec_function_log_destination_open_search.dart';
import 'get_app_spec_function_log_destination_papertrail.dart';

class GetAppSpecFunctionLogDestination {
  /// Datadog configuration.
  final pulumi.Input<GetAppSpecFunctionLogDestinationDatadog>? datadog;
  /// Logtail configuration.
  final pulumi.Input<GetAppSpecFunctionLogDestinationLogtail>? logtail;
  /// The name of the component.
  final pulumi.Input<String> name;
  /// OpenSearch configuration.
  final pulumi.Input<GetAppSpecFunctionLogDestinationOpenSearch>? openSearch;
  /// Papertrail configuration.
  final pulumi.Input<GetAppSpecFunctionLogDestinationPapertrail>? papertrail;

  /// Creates a new [GetAppSpecFunctionLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] The name of the component.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  const GetAppSpecFunctionLogDestination({
    this.datadog,
    this.logtail,
    required this.name,
    this.openSearch,
    this.papertrail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadog': ?pulumi.Input.mapOptionalInputValue<GetAppSpecFunctionLogDestinationDatadog, Map<String, dynamic>>(datadog, (value) => value.toMap()),
      'logtail': ?pulumi.Input.mapOptionalInputValue<GetAppSpecFunctionLogDestinationLogtail, Map<String, dynamic>>(logtail, (value) => value.toMap()),
      'name': name,
      'openSearch': ?pulumi.Input.mapOptionalInputValue<GetAppSpecFunctionLogDestinationOpenSearch, Map<String, dynamic>>(openSearch, (value) => value.toMap()),
      'papertrail': ?pulumi.Input.mapOptionalInputValue<GetAppSpecFunctionLogDestinationPapertrail, Map<String, dynamic>>(papertrail, (value) => value.toMap()),
    };
  }

  factory GetAppSpecFunctionLogDestination.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunctionLogDestination(
      datadog: (() { final guardedValue = map['datadog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecFunctionLogDestinationDatadog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logtail: (() { final guardedValue = map['logtail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecFunctionLogDestinationLogtail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      openSearch: (() { final guardedValue = map['openSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecFunctionLogDestinationOpenSearch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      papertrail: (() { final guardedValue = map['papertrail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecFunctionLogDestinationPapertrail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
