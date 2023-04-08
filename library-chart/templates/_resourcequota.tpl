{{ define "library-chart.resourcequota" }}
apiVersion: v1
kind: LimitRange
metadata:
  name: {{ .Release.Name }}-limit-range
  namespace: {{ .Values.namespace.name }}
  labels:
    app: nginx
spec:
  limits:
    - default:
        memory: {{ .Values.limits.default.memory }}
      defaultRequest:
        memory: {{ .Values.limits.defaultrequest.memory }}
      type: Container
{{- end }}
