package conexion;

public class EventoWServiceProxy implements conexion.EventoWService {
  private String _endpoint = null;
  
  private conexion.EventoWService Evento = null;
   
  public String getEndpoint() {
    return _endpoint;
  }
  
  public conexion.EventoWService getEventoWService() {
    if (EventoWService == null)
      _initEventoWServiceProxy();
    return EventoWService;
  }
  
  public java.lang.String obtenerEvento(java.lang.String nombreCurso) throws java.rmi.RemoteException{
    if (EventoWService == null)
      _initEventoWServiceProxy();
    return EventoWService.obtenerEvento(nombreCurso);
  }
  
  
}