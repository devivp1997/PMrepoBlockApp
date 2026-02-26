-- Track resource creation activity
AzureActivity
| where OperationName contains "Create"
| summarize count() by ResourceGroup

-- Track policy violations
PolicyResources
| summarize count() by ComplianceState

-- Track failed authentication attempts
SigninLogs
| where ResultType != 0
| summarize count() by AppDisplayName
