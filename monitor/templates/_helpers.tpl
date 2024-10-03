{{/*
Define the fullname of the wildfly resource by combining the release name with the chart name.
*/}}
{{- define "wildfly.fullname" -}}
{{- printf "%s-%s" .Release.Name "wildfly" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Define the name of the wildfly resource.
*/}}
{{- define "wildfly.name" -}}
{{- .Chart.Name }}-wildfly
{{- end }}

{{/*
Define the fullname of the mariadb resource.
*/}}
{{- define "mariadb.fullname" -}}
{{- printf "%s-%s" .Release.Name "mariadb" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Define the name of the mariadb resource.
*/}}
{{- define "mariadb.name" -}}
{{- .Chart.Name }}-mariadb
{{- end }}
