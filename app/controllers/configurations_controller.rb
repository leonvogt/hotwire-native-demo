class ConfigurationsController < ApplicationController
  def ios_v1
    render json: {
      settings: {
        enable_feature_x: true
      },
      rules: [
        {
          patterns: [
            "/new$",
            "/edit$",
            "/modal"
          ],
          properties: {
            context: "modal",
            pull_to_refresh_enabled: false
          },
          comment: "Present forms and custom modal path as modals."
        },
        {
          patterns: [
            "/numbers$"
          ],
          properties: {
            view_controller: "numbers"
          },
          comment: "Intercept with a native view."
        },
        {
          patterns: [
            "^/$"
          ],
          properties: {
            presentation: "clear_all"
          },
          comment: "Reset navigation stacks when visiting root page."
        }
      ]
    }
  end
end
