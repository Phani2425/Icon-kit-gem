module IconKit
  module IconsHelper
    def icon_tag(name, options = {})
      classes = "#{options[:class] || ''}"
      size = options[:size] || IconKit.default_size
      color = options[:color] || IconKit.default_color

      case name
      when :building
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24", xmlns: "http://www.w3.org/2000/svg") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4")
        end
      when :plus
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M12 4v16m8-8H4")
        end
      when :money
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z")
        end
      when :print
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M17 17h2a2 2 0 002-2v-4a2 2 0 00-2-2H5a2 2 0 00-2 2v4a2 2 0 002 2h2m2 4h6a2 2 0 002-2v-4a2 2 0 00-2-2H9a2 2 0 00-2 2v4a2 2 0 002 2zm8-12V5a2 2 0 00-2-2H9a2 2 0 00-2 2v4h10z")
        end
      when :box
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10")
        end
      when :chart
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z")
        end
      when :clipboard
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2")
        end
      when :check
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M5 13l4 4L19 7")
        end
      when :edit
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z")
        end
      when :trash
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16")
        end
      when :view
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M15 12a3 3 0 11-6 0 3 3 0 016 0z")
        end
      when :calendar
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z")
        end
      when :hub
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z")
        end
      when :back
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24", xmlns: "http://www.w3.org/2000/svg") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M10 19l-7-7m0 0l7-7m-7 7h18")
        end
      when :pencil
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24", xmlns: "http://www.w3.org/2000/svg") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z")
        end
      when :document
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24", xmlns: "http://www.w3.org/2000/svg") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M9 12h6m-6 1h6m-3-3v6m-9 1V7a2 2 0 012-2h6l2 2h6a2 2 0 012 2v8a2 2 0 01-2 2H7a2 2 0 01-2-2z")
        end
      when :success_check
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z")
        end
      when :document_stack
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2")
        end
      when :hashtag
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M7 20l4-16m2 16l4-16M6 9h14M4 15h14")
        end
      when :clock
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z")
        end
      when :error_circle
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", fill_rule: "evenodd", d: "M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z", clip_rule: "evenodd")
        end
      when :eye
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M15 12a3 3 0 11-6 0 3 3 0 016 0z") +
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z")
        end
      when :x
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M6 18L18 6M6 6l12 12")
        end
      when :home
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", d: "M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z")
        end
      when :filter
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M3 4a1 1 0 011-1h16a1 1 0 011 1v2.586a1 1 0 01-.293.707l-6.414 6.414a1 1 0 00-.293.707V17l-4 4v-6.586a1 1 0 00-.293-.707L3.293 7.293A1 1 0 013 6.586V4z")
        end
      when :info
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z")
        end
      when :wave
        content_tag(:svg, class: "#{size} #{classes}", xmlns: "http://www.w3.org/2000/svg", viewBox: "0 0 1440 160") do
          content_tag(:path, "", fill: "#ffffff", fill_opacity: "1", d: "M0,128L80,117.3C160,107,320,85,480,90.7C640,96,800,128,960,133.3C1120,139,1280,117,1360,106.7L1440,96L1440,320L1360,320C1280,320,1120,320,960,320C800,320,640,320,480,320C320,320,160,320,80,320L0,320Z")
        end
      when :quote
        content_tag(:svg, class: "#{size} #{classes}", fill: color, viewBox: "0 0 32 32") do
          content_tag(:path, "", d: "M9.352 4C4.456 7.456 1 13.12 1 19.36c0 5.088 3.072 8.064 6.624 8.064 3.36 0 5.856-2.688 5.856-5.856 0-3.168-2.208-5.472-5.088-5.472-.576 0-1.344.096-1.536.192.48-3.264 3.552-7.104 6.624-9.024L9.352 4zm16.512 0c-4.8 3.456-8.256 9.12-8.256 15.36 0 5.088 3.072 8.064 6.624 8.064 3.264 0 5.856-2.688 5.856-5.856 0-3.168-2.304-5.472-5.184-5.472-.576 0-1.248.096-1.44.192.48-3.264 3.456-7.104 6.528-9.024L25.864 4z")
        end
      when :location
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", fill_rule: "evenodd", d: "M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z", clip_rule: "evenodd")
        end
      when :project_document
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", d: "M9 2a1 1 0 000 2h2a1 1 0 100-2H9z") +
          content_tag(:path, "", fill_rule: "evenodd", d: "M4 5a2 2 0 012-2 3 3 0 003 3h2a3 3 0 003-3 2 2 0 012 2v11a2 2 0 01-2 2H6a2 2 0 01-2-2V5zm3 4a1 1 0 000 2h.01a1 1 0 100-2H7zm3 0a1 1 0 000 2h3a1 1 0 100-2h-3zm-3 4a1 1 0 100 2h.01a1 1 0 100-2H7zm3 0a1 1 0 100 2h3a1 1 0 100-2h-3z", clip_rule: "evenodd")
        end
      when :add_circle
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", fill_rule: "evenodd", d: "M10 3a1 1 0 011 1v5h5a1 1 0 110 2h-5v5a1 1 0 11-2 0v-5H4a1 1 0 110-2h5V4a1 1 0 011-1z", clip_rule: "evenodd")
        end
      when :trash_bin
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", fill_rule: "evenodd", d: "M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z", clip_rule: "evenodd")
        end
      when :info_circle
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", d: "M10 2a8 8 0 100 16 8 8 0 000-16zm1 11H9v-2h2v2zm0-4H9V5h2v4z")
        end
      when :layers
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", d: "M7 3a1 1 0 000 2h6a1 1 0 100-2H7zM4 7a1 1 0 011-1h10a1 1 0 110 2H5a1 1 0 01-1-1zM2 11a2 2 0 012-2h12a2 2 0 012 2v4a2 2 0 01-2 2H4a2 2 0 01-2-2v-4z")
        end
      when :add_circle
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", fill_rule: "evenodd", d: "M10 5a1 1 0 011 1v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 011-1z", clip_rule: "evenodd")
        end
      when :printer_document
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", fill_rule: "evenodd", d: "M4 4a2 2 0 012-2h8a2 2 0 012 2v12a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm3 1h6v4H7V5zm8 8v2h1v1H4v-1h1v-2a1 1 0 011-1h8a1 1 0 011 1z", clip_rule: "evenodd")
        end
      when :description_document
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", fill_rule: "evenodd", d: "M4 4a2 2 0 012-2h4.586A2 2 0 0112 2.586L15.414 6A2 2 0 0116 7.414V16a2 2 0 01-2 2H6a2 2 0 01-2-2V4zm2 6a1 1 0 011-1h6a1 1 0 110 2H7a1 1 0 01-1-1zm1 3a1 1 0 100 2h6a1 1 0 100-2H7z", clip_rule: "evenodd")
        end
      when :warning
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z")
        end
      when :download_document
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z")
        end
      when :arrow_left
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", fill_rule: "evenodd", d: "M9.707 16.707a1 1 0 01-1.414 0l-6-6a1 1 0 010-1.414l6-6a1 1 0 011.414 1.414L5.414 9H17a1 1 0 110 2H5.414l4.293 4.293a1 1 0 010 1.414z", clip_rule: "evenodd")
        end
      when :phone
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z")
        end
      when :email
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z")
        end
      when :user
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z")
        end
      when :menu
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M4 6h16M4 12h16M4 18h16")
        end
      when :dot_ring
        content_tag(:svg, class: "#{size} #{classes}", fill: "none", stroke: color, viewBox: "0 0 24 24") do
          content_tag(:path, "", stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M8 12h.01M12 12h.01M16 12h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z")
        end
      when :chevron_slash
        content_tag(:svg, class: "#{size} #{classes}", fill: color, viewBox: "0 0 20 20") do
          content_tag(:path, "", d: "M5.555 17.776l8-16 .894.448-8 16-.894-.448z")
        end
      when :lock
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", fill_rule: "evenodd", d: "M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z", clip_rule: "evenodd")
        end
      when :eye_open
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", d: "M10 12a2 2 0 100-4 2 2 0 000 4z") +
          content_tag(:path, "", fill_rule: "evenodd", d: "M.458 10C1.732 5.943 5.522 3 10 3s8.268 2.943 9.542 7c-1.274 4.057-5.064 7-9.542 7S1.732 14.057.458 10zM14 10a4 4 0 11-8 0 4 4 0 018 0z", clip_rule: "evenodd")
        end
      when :eye_closed
        content_tag(:svg, class: "#{size} #{classes}", viewBox: "0 0 20 20", fill: color) do
          content_tag(:path, "", fill_rule: "evenodd", d: "M3.707 2.293a1 1 0 00-1.414 1.414l14 14a1 1 0 001.414-1.414l-1.473-1.473A10.014 10.014 0 0019.542 10C18.268 5.943 14.478 3 10 3a9.958 9.958 0 00-4.512 1.074l-1.78-1.781zm4.261 4.26l1.514 1.515a2.003 2.003 0 012.45 2.45l1.514 1.514a4 4 0 00-5.478-5.478z", clip_rule: "evenodd") +
          content_tag(:path, "", d: "M12.454 16.697L9.75 13.992a4 4 0 01-3.742-3.741L2.335 6.578A9.98 9.98 0 00.458 10c1.274 4.057 5.065 7 9.542 7 .847 0 1.669-.105 2.454-.303z")
        end
      else
        ""
      end
    end
  end
end
