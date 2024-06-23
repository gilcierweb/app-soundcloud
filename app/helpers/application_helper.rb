module ApplicationHelper
  def flash_class(level)
    case level
    when 'info' then
      "alert alert-info"
    when 'notice', 'success' then
      "alert alert-success"
    when 'error' then
      "alert alert-danger"
    when 'alert' then
      "alert alert-warning"
    end
  end

  def display_boolean(level)
    case level
    when 1, true, 'active' then
      'Ativo'
    when 0, false, 'inactive' then
      'Inativo'
    end
  end

  def display_boolean_raw(level)
    case level
    when 1, true, 'active', 'yes', 'yes_ap' then
      'Sim'
    when 0, false, 'inactive', 'no', 'no_ap' then
      'Não'
    end
  end

  def active_class(path)
    if request.path == path
      return 'active'
    else
      return ''
    end
  end

  def format_date(date)
    date.strftime('%d/%m/%Y') if date.present?
  end

  def format_datetime(datetime)
    datetime.strftime('%d/%m/%Y %H:%M') if datetime.present?
  end

  def display_boolean_badge(level)
    case level
    when 1, true, 'active', 'yes', 'yes_ap' then
      '<span class="badge bg-success">Ativo</span>'
    when 0, false, 'inactive', 'no', 'no_ap' then
      '<span class="badge bg-danger">Inativo</span>'
    end
  end

  def display_phone_kind(kind)
    case kind
    when 1, :residential, 'residential' then
      'Residencial'
    when 2, :commercial, 'commercial' then
      'Comercial'
    when 3, :cell_phone, 'cell_phone' then
      'Celular'
    when 4, :reference, 'reference' then
      'Referência'
    end
  end

  def display_boolean_gender(gender)
    case gender
    when 1, :male, 'male' then
      '<span class="badge bg-primary">Masculino</span>'
    when 2, :female, 'female' then
      '<span class="badge bg-danger">Feminino</span>'
    when 3, :other, 'other' then
      '<span class="badge bg-secondary">Outro</span>'
    end
  end

end
