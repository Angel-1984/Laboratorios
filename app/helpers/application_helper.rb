module ApplicationHelper
  def revisar_estado material
    if material.nuevo
      return "Nuevo"
    elsif material.usado
      return "Usado"
    else
      return "Danado"
    end
  end
end
