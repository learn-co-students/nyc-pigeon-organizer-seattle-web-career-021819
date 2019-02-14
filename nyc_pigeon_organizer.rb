def nyc_pigeon_organizer(data)
  newh={}
  data.each do |k,v|
    v.each do |k2, v2|
      count=0
      v2.each do |name|
        if !newh.has_key?(v2[count])
          newh[v2[count]]={}
          newh[v2[count]][k]=[k2.to_s]
        elsif !newh[v2[count]].has_key?(k)
          newh[v2[count]][k]=[k2.to_s]
        else
          newh[v2[count]][k].push(k2.to_s)
        end
        count+=1
      end
    end
  end
  newh
end