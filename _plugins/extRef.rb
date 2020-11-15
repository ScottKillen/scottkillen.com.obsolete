class ExtRefTag < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
    @input = input
  end

  def render(context)
    # Split the input variable (omitting error checking)
    input_split = split_params(@input)
    text = input_split[0].strip
    href = input_split[1].strip

    # Write the output HTML string
    output =  "<a href=#{href}>#{text}"
    output += "<svg class=\"ml-2 d-print-none ext-link-icon\" viewBox=\"0 0 512 512\">"
    output += "<path fill=\"currentColor\" d=\"M440,256H424a8,8,0,0,0-8,8V464a16,16,0,0,1-16,16H48a16,16,0,0,1-16-16V112A16,16,0,0,1,48,96H248a8,8,0,0,0,8-8V72a8,8,0,0,0-8-8H48A48,48,0,0,0,0,112V464a48,48,0,0,0,48,48H400a48,48,0,0,0,48-48V264A8,8,0,0,0,440,256ZM500,0,364,.34a12,12,0,0,0-12,12v10a12,12,0,0,0,12,12L454,34l.7.71L131.51,357.86a12,12,0,0,0,0,17l5.66,5.66a12,12,0,0,0,17,0L477.29,57.34l.71.7-.34,90a12,12,0,0,0,12,12h10a12,12,0,0,0,12-12L512,12A12,12,0,0,0,500,0Z\"/>"
    output += "</svg>"
    output += "</a>"

    # Render it on the page by returning it
    return output;
  end

  def split_params(params)
    params.split("|")
  end
end
Liquid::Template.register_tag('extRef', ExtRefTag)
