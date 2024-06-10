{{/*
Generate the fullname for resources.
*/}}
{{- define "stalwart-mail.fullname" -}}
{{- printf "%s-%s" .Release.Name "stalwart-mail" -}}
{{- end -}}

{{/*
Generate labels for resources.
*/}}
{{- define "stalwart-mail.labels" -}}
app.kubernetes.io/name: {{ include "stalwart-mail.name" . }}
helm.sh/chart: {{ include "stalwart-mail.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Generate selector labels for resources.
*/}}
{{- define "stalwart-mail.selectorLabels" -}}
app.kubernetes.io/name: {{ include "stalwart-mail.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Generate the name for the application.
*/}}
{{- define "stalwart-mail.name" -}}
stalwart-mail
{{- end -}}

{{/*
Generate the chart name and version.
*/}}
{{- define "stalwart-mail.chart" -}}
{{ printf "%s-%s" .Chart.Name .Chart.Version }}
{{- end -}}
