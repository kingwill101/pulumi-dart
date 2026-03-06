// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information for manual implementation for an Azure SQL Database, Server or Elastic Pool Recommended Action.
class RecommendedActionImplementationInfoResponse {
  /// Gets the method in which this recommended action can be manually implemented. e.g., TSql, AzurePowerShell.
  final pulumi.Input<String> method;
  /// Gets the manual implementation script. e.g., T-SQL script that could be executed on the database.
  final pulumi.Input<String> script;

  /// Creates a new [RecommendedActionImplementationInfoResponse].
  /// [method] Gets the method in which this recommended action can be manually implemented. e.g., TSql, AzurePowerShell.
  /// [script] Gets the manual implementation script. e.g., T-SQL script that could be executed on the database.
  const RecommendedActionImplementationInfoResponse({
    required this.method,
    required this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'script': script,
    };
  }

  factory RecommendedActionImplementationInfoResponse.fromMap(Map<String, dynamic> map) {
    return RecommendedActionImplementationInfoResponse(
      method: pulumi.Input.fromValue(map['method'] as String),
      script: pulumi.Input.fromValue(map['script'] as String),
    );
  }
}

