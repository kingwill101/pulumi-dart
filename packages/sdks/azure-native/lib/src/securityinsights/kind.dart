/// Type of the content item we depend on
enum Kind {
  valueDataConnector("DataConnector"),
  valueDataType("DataType"),
  valueWorkbook("Workbook"),
  valueWorkbookTemplate("WorkbookTemplate"),
  valuePlaybook("Playbook"),
  valuePlaybookTemplate("PlaybookTemplate"),
  valueAnalyticsRuleTemplate("AnalyticsRuleTemplate"),
  valueAnalyticsRule("AnalyticsRule"),
  valueHuntingQuery("HuntingQuery"),
  valueInvestigationQuery("InvestigationQuery"),
  valueParser("Parser"),
  valueWatchlist("Watchlist"),
  valueWatchlistTemplate("WatchlistTemplate"),
  valueSolution("Solution"),
  valueAzureFunction("AzureFunction"),
  valueLogicAppsCustomConnector("LogicAppsCustomConnector"),
  valueAutomationRule("AutomationRule");

  const Kind(this.wireValue);
  final String wireValue;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}
