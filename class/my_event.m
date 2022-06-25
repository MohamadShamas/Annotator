classdef my_event < handle
    %Event class used in EEG annotations
    
    properties
        ID
        start_time
        end_time
        name
        type
        channels
        color
        rect
        saved
    end
    
    methods
        function obj = my_event(ID,start_time,end_time,channels,name,type,color,rect,saved)
            if ~ischar(ID)
            obj.ID = char(ID.toString);
            else
              obj.ID = ID;
            end
            obj.start_time = start_time;
            obj.end_time = end_time;
            obj.channels = channels;
            obj.name = name;
            obj.type = type;
            obj.color = color;
            obj.rect = rect;
            obj.saved = saved;
        end
        
        function set.name(obj,str)
            obj.name = str;
            fprintf( 'Event name was set to %s\n',obj.name);
        end
        
        function delete(obj)
            if ~isempty(obj)
                t = obj.name;
                fprintf('event %s was not saved \n',t)
            else
                disp('Data is empty')
            end
        end
        
    end
end

